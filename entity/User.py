class User:
    def __init__(self):
        self.note = None
        self.sex = None
        self.product = None
        self.budget = None

    def fill_sex(self, sex):
        if sex == 'Мужчине':
            self.sex = 'm'
        elif sex == 'Женщине':
            self.sex = 'm'
        elif sex == 'Унисекс':
            self.sex = 'u'
