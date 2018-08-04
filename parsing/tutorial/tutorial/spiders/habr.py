import scrapy
from ..items import ArticleItems


class HabrSpider(scrapy.Spider):
    name = 'habr'
    start_urls = ['https://habr.com/', ]

    def parse(self, response):
        for link in response.xpath(
            '//li'
            '/article[@class="post post_preview"]'
            '/h2[@class="post__title"]'
            '/a[@class="post__title_link"]'
            '/@href'
        ).extract():
            yield scrapy.Request(
                link,
                callback=self.parse_artcile
            )

    def parse_artcile(self, response):
        article = ArticleItems()

        article['title'] = response.xpath(
            '//article[contains(@class, "post_full")]'
            '/div[@class="post__wrapper"]'
            '/h1[contains(@class, "post__title_full")]'
            '/span'
            '/text()'
        ).extract_first()

        article['text'] = response.xpath(
            '//div[contains(@class, "post__body_full")]'
            '/div[contains(@class, "post__text")]'
            '/text()'
        ).extract()

        article['images'] = response.xpath(
            '//div[@class="post__body post__body_full"]'
            '/div[@class="post__text post__text-html js-mediator-article"]'
            '//img'
            '/@src'
        ).extract()

        yield article
