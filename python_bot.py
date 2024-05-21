import telebot
from telebot import types

from db.dbutils import get_all_data_types
from db.dbutils import get_from_perfume
from entity.Perfume import *
from entity.User import User

bot = telebot.TeleBot('7078690317:AAENSHTCpgFHUApd667xHRZtaq5aRcxxNrs')
user_dict = {}


@bot.message_handler(commands=['start'])
def send_welcome(message):
    bot.send_message(message.chat.id, """
    Привет! Этот телеграм-бот создан для помощи в подборке идеального парфюма.
Всё, что вам нужно сделать – ответить на 3 вопроса, которые предложит бот. 
Ваши ответы помогут определить желаемые характеристики и сделать подборку парфюма исходя из ваших предпочтений 🤍
    """)
    bot.register_next_step_handler(message, begin)


@bot.message_handler(commands=['begin'])
def begin(message):
    user = User()
    user_dict[message.chat.id] = user
    markup = types.ReplyKeyboardMarkup()
    price_ranges = get_all_data_types('price')
    for price_range in price_ranges:
        btn = types.KeyboardButton(Perfume.convert_price_range_to_string(price_range))
        markup.row(btn)
    bot.send_message(message.chat.id, "В рамках какого бюджета вы ищете парфюм?", reply_markup=markup)
    bot.register_next_step_handler(message, price_click)


def price_click(message, second_call=False):
    if second_call or any(
            message.text in s for s in Perfume.convert_prices_range_to_string(get_all_data_types('price'))):
        user = user_dict[message.chat.id]
        user.budget = message.text
        markup = types.ReplyKeyboardMarkup()
        perfumes_types = get_all_data_types('type')
        for perfume_type in perfumes_types:
            btn = types.KeyboardButton(perfume_type)
            markup.row(btn)
        bot.send_message(message.chat.id, "Какой тип продукта вы хотите подобрать? ", reply_markup=markup)
        bot.register_next_step_handler(message, type_click)
    else:
        bot.send_message(message.chat.id, f"Такой ценовой категории как {message.text} у нас нет")
        begin(message)


def type_click(message, second_call=False):
    if second_call or any(message.text in s for s in get_all_data_types('type')):
        user = user_dict[message.chat.id]
        user.product = message.text
        markup = types.ReplyKeyboardMarkup()
        notes_types = get_all_data_types('notes')
        for note_type in notes_types:
            btn = types.KeyboardButton(note_type)
            markup.row(btn)
        bot.send_message(message.chat.id, "Какая категория ароматов вам нравится?", reply_markup=markup)
        bot.register_next_step_handler(message, search)
    else:
        bot.send_message(message.chat.id, f"Такого типа продукта, как {message.text} у нас нет")
        price_click(message, True)


def search(message):
    if any(message.text in s for s in get_all_data_types('notes')):
        user = user_dict[message.chat.id]
        user.note = message.text
        price_low, price_high = Perfume.convert_prices_range_from_string(user.budget)
        perfumes = get_from_perfume(user.note, price_low, price_high, user.product)
        markup = types.ReplyKeyboardMarkup()
        btn = types.KeyboardButton('Найти еще раз')
        markup.row(btn)
        bot.send_message(message.chat.id, "Результат вашего запроса", reply_markup=markup)
        if len(perfumes) == 0:
            bot.send_photo(message.chat.id,
                           'https://github.com/IldarGreat/voluunterFront/blob/main/web/Untitled_Artwork-2_page-0001.jpg?raw=true',
                           f'Простите, но по вашему запросу:\nТип продукции:{user.product}\nБюджет:{user.budget}\nАромат:{user.note}\nНичего не найдено')
        for perfume in perfumes:
            bot.send_photo(message.chat.id, perfume.image,
                           f"*{perfume.name}*\n\nТип: {perfume.convert_types_to_readable_format()}\n\nОбъём: {perfume.volume_str} мл\n\nСтоимость: от {perfume.price_str} р\n\n{perfume.comment}",
                           parse_mode='Markdown')
        del user_dict[message.chat.id]
        bot.register_next_step_handler(message, begin)
    else:
        bot.send_message(message.chat.id, f'Такой категории аромата, как {message.text} у нас нет')
        type_click(message, True)


bot.infinity_polling()
