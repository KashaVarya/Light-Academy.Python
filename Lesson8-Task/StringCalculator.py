class StringCalculator:
    def add(self, istring):
        res = 0
        neg_str = "Отрицательные числа запрещены: "

        if istring == "":
            return 0

        if istring[:2] == "//" and istring[3] == "\n":
            istring = istring.replace(istring[2], " ")
            istring = istring[4:]


        istring = istring.replace(",", " ")
        istring = istring.replace("\n", " ")

        for num in istring.split(" "):
            num = int(num)
            if num < 0:
                neg_str += (str(num) + ",")
            elif num <= 1000:
                res += int(num)

        if neg_str[-1:] == ",":
            return neg_str[:-1]

        return res


# StringCalculator().add(" ")
