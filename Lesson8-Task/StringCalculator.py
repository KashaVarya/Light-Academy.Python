class StringCalculator:
    def add(self, string, delimiter):
        res = 0
        for num in string.split(delimiter):
            res += int(num)

        return res
