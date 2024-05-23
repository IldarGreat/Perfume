class Perfume:
    def __init__(self):
        self.id = None
        self.sex = None
        self.price = None
        self.price_str = None
        self.price_type = None
        self.volume = None
        self.volume_str = None
        self.comment = None
        self.name = None
        self.season = None
        self.notes = []
        self.image = None
        self.types = []

    def fill_base(self, row):
        self.id = row[0]
        sex = row[1]
        if sex == 'm':
            self.sex = 'Мужские'
        elif sex == 'f':
            self.sex = 'Женские'
        else:
            self.sex = 'Унисекс'
        self.price = row[2]
        if self.price > 2500:  # check
            self.price_type = 'Средний класс'
        self.volume = row[3]
        self.comment = row[4]
        self.name = row[5]
        self.season = row[6]
        self.image = row[7]

    def fill_from_perfume(self, item):
        self.id = item.id
        self.sex = item.sex
        self.price = item.price
        self.price_type = item.price_type
        self.volume = item.volume
        self.comment = item.comment
        self.name = item.name
        self.season = item.season
        self.notes = item.notes
        self.image = item.image
        self.types = item.types

    @staticmethod
    def convert_price_range_to_string(price_range):
        low = price_range[0]
        high = price_range[1]
        if low is None:
            return f'до {round(high)} рублей'
        if high is None:
            return f'более {round(low)} рублей'
        return f'{round(low)} - {round(high)} рублей'

    @staticmethod
    def convert_prices_range_to_string(prices_range):
        data = []
        for price_range in prices_range:
            data.append(Perfume.convert_price_range_to_string(price_range))
        return data

    @staticmethod
    def convert_prices_range_from_string(price_range):
        data = price_range.split()
        if data[0] == 'до':
            return 0, float(data[1])
        elif data[0] == 'более':
            return float(data[1]), 999999
        else:
            return float(data[0]), float(data[2])

    def convert_types_to_readable_format(self):
        str_type = ''
        if len(self.types) != 0:
            if len(self.types) > 1:
                delimeter = ', '
            else:
                delimeter = ' '
            for type in self.types:
                str_type += str(type[0]) + delimeter
        return str_type[:-2]
