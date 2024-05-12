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
    bot.send_message(message.chat.id, "(Узнать шаблон приветствия) "
                                      "Чтобы начать введите /begin")


@bot.message_handler(commands=['begin'])
def begin(message):
    user = User()
    user_dict[message.chat.id] = user
    markup = types.ReplyKeyboardMarkup()
    price_ranges = get_all_data_types('price')
    for price_range in price_ranges:
        btn = types.KeyboardButton(Perfume.convert_price_range_to_string(price_range))
        markup.row(btn)
    bot.send_message(message.chat.id, "Пожалуйста, выберите ценовую категорию парфюма", reply_markup=markup)
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
        bot.send_message(message.chat.id, "Выберите тип продукта", reply_markup=markup)
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
        bot.send_message(message.chat.id, "Выберите категорию аромата", reply_markup=markup)
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
            bot.send_message(message.chat.id,
                             f'Простите, но по вашему запросу:\nТип продукции:{user.product}\nБюджет:{user.budget}\nАромат:{user.note}\nНичего не найдено')
        for perfume in perfumes:
            bot.send_photo(message.chat.id, perfume.image,
                           f"{perfume.name}\n{perfume.sex}\n{perfume.volume} мл\n{perfume.price} р\n{perfume.comment}")
        del user_dict[message.chat.id]
        bot.register_next_step_handler(message, begin)
    else:
        bot.send_message(message.chat.id, f'Такой категории аромата, как {message.text} у нас нет')
        type_click(message, True)


bot.infinity_polling()
