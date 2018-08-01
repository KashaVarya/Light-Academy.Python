from beautifulsoup4 import BeatifulSoup
import requests

main_domain_stat = 'https://habr.com/'
r = requests(main_domain_stat)

soup = BeatifulSoup(
    r.conten,
    'html.pasrser'
)
article_list = soup.select('li article.post h2 a')

for article in article_list:
    print(article[href])

