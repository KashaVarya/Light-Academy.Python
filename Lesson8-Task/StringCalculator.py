class StringCalculator:
    def add(self, istring):
        res = 0
        neg_str = "Отрицательные числа запрещены: "

        if istring == "":
            return 0

        istring = istring.replace(",", " ")
        istring = istring.replace("\n", " ")

        for num in istring.split(" "):
            num = int(num)
            if num < 0:
                neg_str += (str(num) + ",")
            else:
                res += int(num)

        if neg_str[-1:] == ",":
            return neg_str[:-1]

        return res
