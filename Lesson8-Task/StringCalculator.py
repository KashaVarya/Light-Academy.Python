class StringCalculator:
    def add(self, istring):
        res = 0

        if istring == "":
            return 0

        istring = istring.replace(",", " ")
        print(istring)

        for num in istring.split(" "):
            res += int(num)

        return res
