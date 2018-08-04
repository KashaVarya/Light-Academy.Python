import scrapy
from ..items import WarehouseParserItem


class WarehouseParserSpider(scrapy.Spider):
    name = 'warehouse'
    allowed_domains = [
        'barneyswarehouse.com',
    ]
    start_urls = [
        'https://www.barneyswarehouse.com/category/men/shoes/N-1waxoc5',
        # 'https://www.barneyswarehouse.com/category/women/shoes/N-w9m0kw',
    ]

    def parse(self, response):
        links = response.xpath(
            '//div[@class="product-tile "]'
            '/div[@class="wrap-desc"]'
            '/div[@class="product-name"]'
            '/a[@class="name-link"]'
            '/@href'
        )
        print(links)