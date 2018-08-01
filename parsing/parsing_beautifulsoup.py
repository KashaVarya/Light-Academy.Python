from bs4 import BeautifulSoup
import requests

main_domain_stat = 'https://habr.com/'
r = requests.get(main_domain_stat)

soup = BeautifulSoup(
    r.content,
    'html.parser'
)
article_list = soup.select('li article.post h2 a')

for article in article_list:
    print(article['href'])

