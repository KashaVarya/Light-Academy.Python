import scrapy
from ..items import WarehouseParserItem


class WarehouseParserSpider(scrapy.Spider):
    name = 'warehouse'
    allowed_domains = [
        'barneyswarehouse.com',
    ]
    start_urls = [
        # 'https://www.barneyswarehouse.com/category/men/shoes/N-1waxoc5',
        # 'https://www.barneyswarehouse.com/category/women/shoes/N-w9m0kw',
        'https://www.barneyswarehouse.com/'
        'category/men/shoes/N-1waxoc5;'
        'jsessionid=zCsUbdizy76cAmuUYVjUY8IpEzgYaKaLx5rkQmQB5ePGPUoqbiyE!'
        '-1378713604!763426-prodapp1!20680!-1?page=1&recordsPerPage=48'
    ]

    def start_requests(self):
        for url in self.start_urls:
            yield scrapy.Request(
                url,
                callback=self.parse_links,
                headers={
                    'User-Agent':
                        'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) '
                        'Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36'
                }
            )

    def parse_links(self, response):
        links = response.xpath(
            '//div[@class="product-tile "]'
            '/div[@class="wrap-desc"]'
            '/div[@class="product-name"]'
            '/a[@class="name-link"]'
            '/@href'
        ).extract()

        for link in links[:2]:
            yield scrapy.Request(
                'https://www.barneyswarehouse.com' + link,
                callback=self.parse_men_shoes,
                headers={
                    'User-Agent':
                        'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) '
                        'Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36'
                }
            )

    def parse_men_shoes(self, response):
        block1 = response.xpath(
            '//div[@class="productDetailContent"]'
            '/div[contains(@class, "pdp-container")]'
            '/div[contains(@class, "primary-content")]'
            '/div[@class="pdp-main"]'
        )

        block2 = block1.xpath(
            'div[@id="productInfoContainer"]'
            '/div[@class="pdp-picker-contents"]'
            '/div[@id="picker_contents"]'
            '/div[@id="atg_store_picker"]'
            '/div[@class="atg_store_selectAttributes"]'
        )

        item = WarehouseParserItem()
        item['title'] = self.parse_title(block1)
        item['brand'] = self.parse_brand(block1)
        item['price'] = self.parse_price(block2)
        item['size'] = self.parse_size(block2)
        item['description'] = self.parse_description(block1)
        item['image'] = self.parse_image(block1)
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
            'div[@class="picker_price_attribute"]'
            '/div[@class="atg_store_productPrice"]'
            '/div[@class="red-discountPrice"]'
            '/text()'
        ).extract_first().strip()

    def parse_size(self, response):
        return [
            size.strip()
            for size in response.xpath(
                            'div[@class="size-qty-section"]'
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
                                    '/div[@class="panel-group clear"]'
                                    '/div[@class="panel panel-default"]'
                                    '/div[@class="panel-collapse collapse in"]'
                                    '/div[@class="panel-body standard-p"]'
                                    '/div[@class="pdpReadMore"]'
                                    '//text()'
                                ).extract()
        ]))

    def parse_image(self, response):
        return response.xpath(
            'div[contains(@class, "product-image-container")]'
            '//a[contains(@class, "pdp-image")]'
            '/@data-url'
        ).extract_first()
