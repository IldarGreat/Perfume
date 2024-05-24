import telebot
from telebot import types

from db.dbutils import get_all_data_types
from db.dbutils import get_from_perfume
from entity.Perfume import *
from entity.User import User

bot = telebot.TeleBot('7078690317:AAENSHTCpgFHUApd667xHRZtaq5aRcxxNrs')
user_dict = {}
product_question = """
Какой тип продукта вы хотите подобрать?\n
* Парфюмерная вода (EAU DE PARFUM) * – один из самых популярных продуктов. В парфюмерной воде душистые вещества составляют 15-20%, поэтому ее называют дневными духам. Формат парфюмерной воды позволяет ярко и активно проявляться средним и базовым нотам композиции в течение 5-8 часов, что является довольной высокой стойкостью\n
* Туалетная вода * обычно имеет более низкую концентрацию ароматических масел (обычно около 5-15%), что делает ее более легкой и менее стойкой. Стойкость туалетной воды обычно составляет от 2 до 4 часов на коже.\n
* Духи * имеют концентрацию от 15 до 30% и сохраняют свою стойкость от 8 до 12 часов, поэтому больше подходят для вечерних мероприятий.\n
* Экстракт духов или концентрированные духи * - самый концентрированный и стойкий вид ароматического продукта с содержанием действующих компонентов от 30 до 55%. Стойкость таких духов может составлять до 24 часов.
"""
with open('aromat_question.txt', 'r') as file:
    all_lines = file.readlines()
    aromat_question = ''.join(all_lines)

with open('aromat_question2.txt', 'r') as file:
    all_lines = file.readlines()
    aromat_question2 = ''.join(all_lines)


@bot.message_handler(commands=['start'])
def send_welcome(message):
    bot.send_photo(message.chat.id,
                   'https://github.com/IldarGreat/voluunterFront/blob/main/web/start.jpg?raw=true', """
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
    bot.register_next_step_handler(message, sex_click)


def sex_click(message, second_call=False):
    if second_call or any(
            message.text in s for s in Perfume.convert_prices_range_to_string(get_all_data_types('price'))):
        user = user_dict[message.chat.id]
        user.budget = message.text
        markup = types.ReplyKeyboardMarkup()
        sexs = ['Для мужчины', 'Для женщины']
        for sex in sexs:
            btn = types.KeyboardButton(sex)
            markup.row(btn)
        bot.send_message(message.chat.id, "Для кого выбираете аромат?", reply_markup=markup)
        bot.register_next_step_handler(message, price_click)
    elif message.text == '/start':
        del user_dict[message.chat.id]
        send_welcome(message)
    else:
        bot.send_message(message.chat.id, f"Такой ценовой категории как {message.text} у нас нет")
        price_click(message, True)


def price_click(message, second_call=False):
    if second_call or any(message.text in s for s in ['Для мужчины', 'Для женщины']):
        user = user_dict[message.chat.id]
        user.sex = message.text
        markup = types.ReplyKeyboardMarkup()
        perfumes_types = get_all_data_types('type')
        for perfume_type in perfumes_types:
            btn = types.KeyboardButton(perfume_type)
            markup.row(btn)
        bot.send_message(message.chat.id, product_question, reply_markup=markup, parse_mode='Markdown')
        bot.register_next_step_handler(message, type_click)
    elif message.text == '/start':
        del user_dict[message.chat.id]
        send_welcome(message)
    else:
        bot.send_message(message.chat.id, f"Такого пола {message.text} нет")
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
        bot.send_message(message.chat.id, aromat_question, parse_mode='HTML')
        bot.send_message(message.chat.id, aromat_question2, reply_markup=markup, parse_mode='HTML')
        bot.register_next_step_handler(message, search)
    elif message.text == '/start':
        del user_dict[message.chat.id]
        send_welcome(message)
    else:
        bot.send_message(message.chat.id, f"Такого пола {message.text} нет")
        price_click(message, True)


def search(message):
    if any(message.text in s for s in get_all_data_types('notes')):
        user = user_dict[message.chat.id]
        user.note = message.text
        price_low, price_high = Perfume.convert_prices_range_from_string(user.budget)
        if user.sex == 'Для мужчины':
            sex = 'm'
        else:
            sex = 'f'
        perfumes = get_from_perfume(user.note, price_low, price_high, user.product, sex)
        markup = types.ReplyKeyboardMarkup()
        btn = types.KeyboardButton('Найти еще раз')
        markup.row(btn)
        bot.send_message(message.chat.id, "Результат вашего запроса", reply_markup=markup)
        if len(perfumes) == 0:
            bot.send_photo(message.chat.id,
                           'https://github.com/IldarGreat/voluunterFront/blob/main/web/not_found.jpg?raw=true',
                           f'Простите, но по вашему запросу:\nТип продукции: {user.product}\nБюджет: {user.budget}\nАромат: {user.note}\n{user.sex}\nНичего не найдено')
        for perfume in perfumes:
            bot.send_photo(message.chat.id, perfume.image,
                           f"<b>{perfume.name}</b>\n\n<b>Тип</b>: {perfume.convert_types_to_readable_format()}\n\n<b>Объём</b>: {perfume.volume_str} мл\n\n<b>Стоимость</b>: от {perfume.price_str} р\n\n{perfume.comment}",
                           parse_mode='HTML')
        del user_dict[message.chat.id]
        bot.register_next_step_handler(message, begin)
    elif message.text == '/start':
        del user_dict[message.chat.id]
        send_welcome(message)
    else:
        bot.send_message(message.chat.id, f'Такой категории аромата, как {message.text} у нас нет')
        type_click(message, True)


bot.infinity_polling()
