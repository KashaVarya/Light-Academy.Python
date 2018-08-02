import lxml.html as html
from urllib.request import urlopen
import requests

main_domain_stat = 'https://habr.com/'
page = html.parse(
    urlopen(main_domain_stat)
).getroot()
print(page)

article_title = page.xpath(
    '//li'
    '/article[contains(@class, "post")]'
    '/h2[@class="post__title"]'
    '/a[@class="post__title_link"]'
    '/text()'
)
print(article_title)

article_links = page.xpath(
    '//li'
    '/article[contains(@class, "post")]'
    '/h2[@class="post__title"]'
    '/a[@class="post__title_link"]'
    '/@href'
)
print(article_links)

req = requests.get(main_domain_stat)
page2 = html.fromstring(req.content)
print(page2)

article_text = page2.xpath(
    '//li'
    '/article[contains(@class, "post")]'
    '/div[contains(@class, "post__body")]'
)

for item in article_text:
    print('ARTICLE')
    article = item.xpath(
        './/text()'
    )
    for par in article:
        print(par)

# Scrapy example:

# response.xpath('//dd[@class="post__tags-list"]/ul[@class="inline-list inline-list_fav-tags js-post-tags"]//text()')

# response.xpath('//dd[@class="post__tags-list"]/ul[@class="inline-list inline-list_fav-tags js-post-tags"]/li[@class="inline-list__item inline-list__item_tag"]/a[@class="inline-list__item-link post__tag  "]')

# response.xpath('//ul[contains(@class, "content-list_comments")]/li[contains(@class, "content-list__item")]/div[@class="comment"]')

