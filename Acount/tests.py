from django.test import TestCase

# Create your tests here.


class IdentityCard:
    def __init__(self):
        self.__Wi = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2]
        self.__Ti = ['1', '0', 'x', '9', '8', '7', '6', '5', '4', '3', '2']

    def check(self, code):
        if (len(code) != 17):
            print
            "必须为17位的字符"
            return False
        return True

    def calculate(self, code):
        sum = 0
        for i in range(17):
            sum += int(code[i]) * self.__Wi[i]
        return self.__Ti[sum % 11]


def test():
    ic = IdentityCard()
    code = "32032319960402543"  # 17位身份证
    if ic.check(code):
        print("你的校验位为:%s" % ic.calculate(code))


if __name__ == '__main__':
    test()
