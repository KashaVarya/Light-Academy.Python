class StringCalculator:
    def add(self, string, delimiter):
        res = 0

        if string == "":
            return 0d

        for num in string.split(delimiter):
            res += int(num)

        return res
