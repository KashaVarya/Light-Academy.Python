import scrapy
from ..items import WarehouseParserItem


class WarehouseParserSpider(scrapy.Spider):
    name = 'warehouse'
    allowed_domains = [
        'barneyswarehouse.com',
    ]
    start_urls = [
        'https://www.barneyswarehouse.com/category/men/shoes/N-1waxoc5',
        'https://www.barneyswarehouse.com/category/women/shoes/N-w9m0kw',
    ]

    def parse(self, response):
        links = response.xpath(
            '//div[@class="product-tile "]'
            '/div[@class="wrap-desc"]'
            '/div[@class="product-name"]'
            '/a[@class="name-link"]'
            '/@href'
        ).extract()

        for link in links:
            yield scrapy.Request(
                'https://www.barneyswarehouse.com' + link,
                callback=self.parse_men_shoes
            )

    def parse_men_shoes(self, response):
        block = response.xpath(
            '//div[@class="productDetailContent"]'
            '/div[contains(@class, "pdp-container")]'
            '/div[contains(@class, "primary-content")]'
            '/div[@class="pdp-main"]'
        )

        item = WarehouseParserItem()
        item['title'] = self.parse_title(block)
        item['brand'] = self.parse_brand(block)
        item['price'] = self.parse_price(block)
        item['size'] = self.parse_size(block)
        item['description'] = self.parse_description(block)
        item['image'] = self.parse_image(block)
        yield item

    def parse_title(self, response):
        return response.xpath(
            'div[@id="productInfoContainer"]'
            '/h2[@class="product-title"]'
            '/text()'
        ).extract_first().strip()

    def parse_brand(self, response):
        return response.xpath(
            'div[@id="productInfoContainer"]'
            '/h1[@class="prd-brand"]'
            '/a'
            '/text()'
        ).extract_first().strip()

    def parse_price(self, response):
        return response.xpath(
            'div[@id="productInfoContainer"]'
            '//div[@class="picker_price_attribute"]'
            '/div[@class="atg_store_productPrice"]'
            '/div[@class="red-discountPrice"]'
            '/text()'
        ).extract_first().strip()

    def parse_size(self, response):
        return [
            size.strip()
            for size in response.xpath(
                'div[@id="productInfoContainer"]'
                '//div[@class="size-qty-section"]'
                '/div[@class="atg_store_pickerContainer"]'
                '/div[@class="atg_store_sizePicker size-label"]'
                '/span[@class="selector"]'
                '/a'
                '/text()'
            ).extract()
        ]

    def parse_description(self, response):
        return list(filter(lambda s: len(s) > 0, [
            description.strip()
            for description in response.xpath(
                                    'div[@id="productInfoContainer"]'
                                    '//div[@class="pdpReadMore"]'
                                    '//text()'
                                ).extract()
        ]))

    def parse_image(self, response):
        return response.xpath(
            'div[contains(@class, "product-image-container")]'
            '//a[contains(@class, "pdp-image")]'
            '/@data-url'
        ).extract_first()
