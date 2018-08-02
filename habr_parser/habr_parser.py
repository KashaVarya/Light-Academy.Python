from lxml import html
import requests
import json


main_domain = 'https://habr.com/'
data = {'articles': []}

main_page = html.fromstring(requests.get(main_domain).content)

links = main_page.xpath(
    '//li'
    '/article[@class="post post_preview"]'
    '/h2[@class="post__title"]'
    '/a[@class="post__title_link"]'
    '/@href'
)

for link in links:
    article_page = html.fromstring(requests.get(link).content)

    title = article_page.cssselect(
        'article.post_full '
        'div.post__wrapper '
        'h1.post__title_full '
        'span'
    )[0].text_content()

    text = article_page.cssselect(
        'div.post__body_full '
        'div.post__text'
    )[0].text_content()

    images = article_page.xpath(
        '//div[@class="post__body post__body_full"]'
        '/div[@class="post__text post__text-html js-mediator-article"]'
        '//img'
        '/@src'
    )

    data['articles'].append({
        'title': title,
        'text': text,
        'images': images
    })

with open('articles.txt', 'w') as outfile:
    json.dump(data, outfile, indent=4, ensure_ascii=False)
