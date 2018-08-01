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

# response.xpath('//dd[@class="post__tags-list"]/ul[@class="inline-list inline-list_fav-tags js-post-tags"]//text()')

# response.xpath('//dd[@class="post__tags-list"]/ul[@class="inline-list inline-list_fav-tags js-post-tags"]/li[@class="inline-list__item inline-list__item_tag"]/a[@class="inline-list__item-link post__tag  "]')

# response.xpath('//ul[contains(@class, "content-list_comments")]/li[contains(@class, "content-list__item")]/div[@class="comment"]')


< div


class ="comment" id="comment_18943439" >

< span


class ="comment__folding-dotholder" > < / span >

< div


class ="comment__head   " rel="18943439" >

< a
href = "https://habr.com/users/pudovMaxim/"


class ="user-info user-info_inline" data-user-login="pudovMaxim" >

< svg


class ="default-image default-image_mini default-image_blue" width="24" height="24" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#slug" > <

/ use > < / svg >
< span


class ="user-info__nickname user-info__nickname_small user-info__nickname_comment" > pudovMaxim < / span >

< / a >

< time


class ="comment__date-time comment__date-time_published" > 31.07.18 в 20:51 <

/ time >
< ul


class ="inline-list inline-list_comment-nav" >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18943439"


class ="icon_comment-anchor" title="Ссылка на комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#anchor" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#"


class ="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18943439" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled="" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#book" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav hidden js-comment_children" >

< a
href = "#comment_18943439"


class ="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18943439" data-parent_id="0" title="Вернуться к ответу" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >
< / ul >

< div


class ="voting-wjt voting-wjt_comments js-comment-vote" data-id="18943439" data-post-target="418819" data-type="3" >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-up" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >

< span


class ="voting-wjt__counter   js-score" title="Общий рейтинг 0: ↑0 и ↓0" > 0 < / span >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-down" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >
< / div >

< / div >

< div


class ="comment__message " > А как наблюдают за такими атомами? По идее, любое внешнее воздействие должно нагревать их или нет? < / div >

< div


class ="comment__footer" >

< / div >

< div


class ="comment__reply-form js-form_placeholder" > < / div >

< / div >

< ul


class ="content-list content-list_nested-comments content-list_nested-comments-0" id="reply_comments_18943439" > < li class ="content-list__item content-list__item_comment js-comment " rel="18943449" >

< span


class ="parent_id" data-parent_id="18943439" > < / span >

< div


class ="comment" id="comment_18943449" >

< span


class ="comment__folding-dotholder" > < / span >

< div


class ="comment__head comment__head_topic-author  " rel="18943449" >

< a
href = "https://habr.com/users/OriSvet/"


class ="user-info user-info_inline" data-user-login="OriSvet" >

< svg


class ="default-image default-image_mini default-image_green" width="24" height="24" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#slug" > <

/ use > < / svg >
< span


class ="user-info__nickname user-info__nickname_small user-info__nickname_comment" > OriSvet < / span >

< / a >

< time


class ="comment__date-time comment__date-time_published" > 31.07.18 в 20:53 <

/ time >
< ul


class ="inline-list inline-list_comment-nav" >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18943449"


class ="icon_comment-anchor" title="Ссылка на комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#anchor" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#"


class ="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18943449" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled="" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#book" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< span


class ="icon_comment-branch js-comment_tree" data-id="18943449" data-parent_id="18943439" title="Показать ветку комментариев" > < svg width="8" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#tree" > <

/ use > < / svg > < / span >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18943439"


class ="icon_comment-arrow-up js-comment_parent" data-id="18943449" data-parent_id="18943439" title="Показать предыдущий комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav hidden js-comment_children" >

< a
href = "#comment_18943449"


class ="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18943449" data-parent_id="18943439" title="Вернуться к ответу" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >
< / ul >

< div


class ="voting-wjt voting-wjt_comments js-comment-vote" data-id="18943449" data-post-target="418819" data-type="3" >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-up" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >

< span


class ="voting-wjt__counter   js-score" title="Общий рейтинг 0: ↑0 и ↓0" > 0 < / span >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-down" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >
< / div >

< / div >

< div


class ="comment__message " > Квантовая физика это что-то вообще из области магии, по-моему.< / div >

< div


class ="comment__footer" >

< / div >

< div


class ="comment__reply-form js-form_placeholder" > < / div >

< / div >

< ul


class ="content-list content-list_nested-comments content-list_nested-comments-1" id="reply_comments_18943449" > < li class ="content-list__item content-list__item_comment js-comment " rel="18944107" >

< span


class ="parent_id" data-parent_id="18943449" > < / span >

< div


class ="comment" id="comment_18944107" >

< span


class ="comment__folding-dotholder" > < / span >

< div


class ="comment__head   " rel="18944107" >

< a
href = "https://habr.com/users/Jeyko/"


class ="user-info user-info_inline" data-user-login="Jeyko" >

< svg


class ="default-image default-image_mini default-image_green" width="24" height="24" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#slug" > <

/ use > < / svg >
< span


class ="user-info__nickname user-info__nickname_small user-info__nickname_comment" > Jeyko < / span >

< / a >

< time


class ="comment__date-time comment__date-time_published" > 31.07.18 в 23:44 <

/ time >
< ul


class ="inline-list inline-list_comment-nav" >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18944107"


class ="icon_comment-anchor" title="Ссылка на комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#anchor" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#"


class ="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18944107" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled="" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#book" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< span


class ="icon_comment-branch js-comment_tree" data-id="18944107" data-parent_id="18943449" title="Показать ветку комментариев" > < svg width="8" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#tree" > <

/ use > < / svg > < / span >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18943449"


class ="icon_comment-arrow-up js-comment_parent" data-id="18944107" data-parent_id="18943449" title="Показать предыдущий комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav hidden js-comment_children" >

< a
href = "#comment_18944107"


class ="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18944107" data-parent_id="18943449" title="Вернуться к ответу" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >
< / ul >

< div


class ="voting-wjt voting-wjt_comments js-comment-vote" data-id="18944107" data-post-target="418819" data-type="3" >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-up" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >

< span


class ="voting-wjt__counter voting-wjt__counter_positive  js-score" title="Общий рейтинг 7: ↑7 и ↓0" > +7 < / span >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-down" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >
< / div >

< / div >

< div


class ="comment__message " > «Any sufficiently advanced technology is indistinguishable from magic.»… © < / div >

< div


class ="comment__footer" >

< / div >

< div


class ="comment__reply-form js-form_placeholder" > < / div >

< / div >

< ul


class ="content-list content-list_nested-comments content-list_nested-comments-2" id="reply_comments_18944107" > < li class ="content-list__item content-list__item_comment js-comment " rel="18944133" >

< span


class ="parent_id" data-parent_id="18944107" > < / span >

< div


class ="comment" id="comment_18944133" >

< span


class ="comment__folding-dotholder" > < / span >

< div


class ="comment__head comment__head_topic-author  " rel="18944133" >

< a
href = "https://habr.com/users/OriSvet/"


class ="user-info user-info_inline" data-user-login="OriSvet" >

< svg


class ="default-image default-image_mini default-image_green" width="24" height="24" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#slug" > <

/ use > < / svg >
< span


class ="user-info__nickname user-info__nickname_small user-info__nickname_comment" > OriSvet < / span >

< / a >

< time


class ="comment__date-time comment__date-time_published" > 31.07.18 в 23:47 <

/ time >
< ul


class ="inline-list inline-list_comment-nav" >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18944133"


class ="icon_comment-anchor" title="Ссылка на комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#anchor" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#"


class ="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18944133" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled="" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#book" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< span


class ="icon_comment-branch js-comment_tree" data-id="18944133" data-parent_id="18944107" title="Показать ветку комментариев" > < svg width="8" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#tree" > <

/ use > < / svg > < / span >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18944107"


class ="icon_comment-arrow-up js-comment_parent" data-id="18944133" data-parent_id="18944107" title="Показать предыдущий комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav hidden js-comment_children" >

< a
href = "#comment_18944133"


class ="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18944133" data-parent_id="18944107" title="Вернуться к ответу" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >
< / ul >

< div


class ="voting-wjt voting-wjt_comments js-comment-vote" data-id="18944133" data-post-target="418819" data-type="3" >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-up" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >

< span


class ="voting-wjt__counter  voting-wjt__counter_negative js-score" title="Общий рейтинг 2: ↑0 и ↓2" > –2 < / span >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-down" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >
< / div >

< / div >

< div


class ="comment__message comment__message_downgrade comment__message_downgrade-2" > За цитату — респект! < / div >

< div


class ="comment__footer" >

< / div >

< div


class ="comment__reply-form js-form_placeholder" > < / div >

< / div >

< ul


class ="content-list content-list_nested-comments content-list_nested-comments-3" id="reply_comments_18944133" > < li class ="content-list__item content-list__item_comment js-comment " rel="18944297" >

< span


class ="parent_id" data-parent_id="18944133" > < / span >

< div


class ="comment" id="comment_18944297" >

< span


class ="comment__folding-dotholder" > < / span >

< div


class ="comment__head   " rel="18944297" >

< a
href = "https://habr.com/users/Jeyko/"


class ="user-info user-info_inline" data-user-login="Jeyko" >

< svg


class ="default-image default-image_mini default-image_green" width="24" height="24" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#slug" > <

/ use > < / svg >
< span


class ="user-info__nickname user-info__nickname_small user-info__nickname_comment" > Jeyko < / span >

< / a >

< time


class ="comment__date-time comment__date-time_published" > 01.08.18 в 00:57 <

/ time >
< ul


class ="inline-list inline-list_comment-nav" >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18944297"


class ="icon_comment-anchor" title="Ссылка на комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#anchor" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#"


class ="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18944297" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled="" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#book" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< span


class ="icon_comment-branch js-comment_tree" data-id="18944297" data-parent_id="18944133" title="Показать ветку комментариев" > < svg width="8" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#tree" > <

/ use > < / svg > < / span >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18944133"


class ="icon_comment-arrow-up js-comment_parent" data-id="18944297" data-parent_id="18944133" title="Показать предыдущий комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav hidden js-comment_children" >

< a
href = "#comment_18944297"


class ="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18944297" data-parent_id="18944133" title="Вернуться к ответу" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >
< / ul >

< div


class ="voting-wjt voting-wjt_comments js-comment-vote" data-id="18944297" data-post-target="418819" data-type="3" >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-up" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >

< span


class ="voting-wjt__counter  voting-wjt__counter_negative js-score" title="Общий рейтинг 3: ↑0 и ↓3" > –3 < / span >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-down" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >
< / div >

< / div >

< div


class ="comment__message comment__message_downgrade comment__message_downgrade-3" >: )

    < / div >

        < div


class ="comment__footer" >

< / div >

< div


class ="comment__reply-form js-form_placeholder" > < / div >

< / div >

< ul


class ="content-list content-list_nested-comments content-list_nested-comments-4" id="reply_comments_18944297" > < / ul >

< / li >
< / ul >
< / li >
< / ul >
< / li >
< / ul >
< / li >
< li


class ="content-list__item content-list__item_comment js-comment " rel="18944277" >

< span


class ="parent_id" data-parent_id="18943439" > < / span >

< div


class ="comment" id="comment_18944277" >

< span


class ="comment__folding-dotholder" > < / span >

< div


class ="comment__head   " rel="18944277" >

< a
href = "https://habr.com/users/Revetements_Etales/"


class ="user-info user-info_inline" data-user-login="Revetements_Etales" >

< svg


class ="default-image default-image_mini default-image_green" width="24" height="24" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#slug" > <

/ use > < / svg >
< span


class ="user-info__nickname user-info__nickname_small user-info__nickname_comment" > Revetements_Etales < / span >

< / a >

< time


class ="comment__date-time comment__date-time_published" > 01.08.18 в 00:42 <

/ time >
< ul


class ="inline-list inline-list_comment-nav" >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18944277"


class ="icon_comment-anchor" title="Ссылка на комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#anchor" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#"


class ="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18944277" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled="" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#book" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< span


class ="icon_comment-branch js-comment_tree" data-id="18944277" data-parent_id="18943439" title="Показать ветку комментариев" > < svg width="8" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#tree" > <

/ use > < / svg > < / span >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18943439"


class ="icon_comment-arrow-up js-comment_parent" data-id="18944277" data-parent_id="18943439" title="Показать предыдущий комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav hidden js-comment_children" >

< a
href = "#comment_18944277"


class ="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18944277" data-parent_id="18943439" title="Вернуться к ответу" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >
< / ul >

< div


class ="voting-wjt voting-wjt_comments js-comment-vote" data-id="18944277" data-post-target="418819" data-type="3" >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-up" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >

< span


class ="voting-wjt__counter voting-wjt__counter_positive  js-score" title="Общий рейтинг 3: ↑3 и ↓0" > +3 < / span >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-down" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >
< / div >

< / div >

< div


class ="comment__message " > < a href="https://coldatomlab.jpl.nasa.gov/sciencemeasurements/" > coldatomlab.jpl.nasa.gov / sciencemeasurements < / a > < br >

< blockquote > We
image
the
atoms
with a pair of laser beam flashes; the first flash captures a «shadow» of the atom cloud, while the second flash records a reference image.We can then process the images to get the density distribution of the cloud ( in these images RED is the most dense
while BLACK is zero density).The expansion rate provides a measurement of the temperature of the ultra cold Rb < / blockquote > < / div >

< div


class ="comment__footer" >

< / div >

< div


class ="comment__reply-form js-form_placeholder" > < / div >

< / div >

< ul


class ="content-list content-list_nested-comments content-list_nested-comments-1" id="reply_comments_18944277" > < li class ="content-list__item content-list__item_comment js-comment " rel="18944331" >

< span


class ="parent_id" data-parent_id="18944277" > < / span >

< div


class ="comment" id="comment_18944331" >

< span


class ="comment__folding-dotholder" > < / span >

< div


class ="comment__head comment__head_topic-author  " rel="18944331" >

< a
href = "https://habr.com/users/OriSvet/"


class ="user-info user-info_inline" data-user-login="OriSvet" >

< svg


class ="default-image default-image_mini default-image_green" width="24" height="24" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#slug" > <

/ use > < / svg >
< span


class ="user-info__nickname user-info__nickname_small user-info__nickname_comment" > OriSvet < / span >

< / a >

< time


class ="comment__date-time comment__date-time_published" > 01.08.18 в 01:23 <

/ time >
< ul


class ="inline-list inline-list_comment-nav" >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18944331"


class ="icon_comment-anchor" title="Ссылка на комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#anchor" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#"


class ="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18944331" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled="" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#book" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< span


class ="icon_comment-branch js-comment_tree" data-id="18944331" data-parent_id="18944277" title="Показать ветку комментариев" > < svg width="8" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#tree" > <

/ use > < / svg > < / span >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18944277"


class ="icon_comment-arrow-up js-comment_parent" data-id="18944331" data-parent_id="18944277" title="Показать предыдущий комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav hidden js-comment_children" >

< a
href = "#comment_18944331"


class ="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18944331" data-parent_id="18944277" title="Вернуться к ответу" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >
< / ul >

< div


class ="voting-wjt voting-wjt_comments js-comment-vote" data-id="18944331" data-post-target="418819" data-type="3" >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-up" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >

< span


class ="voting-wjt__counter   js-score" title="Общий рейтинг 0: ↑0 и ↓0" > 0 < / span >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-down" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >
< / div >

< / div >

< div


class ="comment__message " > Точно магия.Спасибо! < / div >

< div


class ="comment__footer" >

< / div >

< div


class ="comment__reply-form js-form_placeholder" > < / div >

< / div >

< ul


class ="content-list content-list_nested-comments content-list_nested-comments-2" id="reply_comments_18944331" > < / ul >

< / li >
< / ul >
< / li >
< / ul >
< / li >
< li


class ="content-list__item content-list__item_comment js-comment " rel="18943719" >

< span


class ="parent_id" data-parent_id="0" > < / span >

< div


class ="comment" id="comment_18943719" >

< span


class ="comment__folding-dotholder" > < / span >

< div


class ="comment__head   " rel="18943719" >

< a
href = "https://habr.com/users/Sirion/"


class ="user-info user-info_inline" data-user-login="Sirion" >

< img
src = "//habrastorage.org/getpro/habr/avatars/f57/a8c/4c2/f57a8c4c20c5fdcfb5e0ecb86ad9dc72_small.jpg"


class ="user-info__image-pic user-info__image-pic_small" width="24" height="24" >

< span


class ="user-info__nickname user-info__nickname_small user-info__nickname_comment" > Sirion < / span >

< / a >

< time


class ="comment__date-time comment__date-time_published" > 31.07.18 в 22:07 <

/ time >
< ul


class ="inline-list inline-list_comment-nav" >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18943719"


class ="icon_comment-anchor" title="Ссылка на комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#anchor" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#"


class ="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18943719" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled="" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#book" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav hidden js-comment_children" >

< a
href = "#comment_18943719"


class ="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18943719" data-parent_id="0" title="Вернуться к ответу" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >
< / ul >

< div


class ="voting-wjt voting-wjt_comments js-comment-vote" data-id="18943719" data-post-target="418819" data-type="3" >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-up" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >

< span


class ="voting-wjt__counter voting-wjt__counter_positive  js-score" title="Общий рейтинг 10: ↑7 и ↓3" > +4 < / span >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-down" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >
< / div >

< / div >

< div


class ="comment__message " > * шутка про сердце твоей бывшей * < / div >

< div


class ="comment__footer" >

< / div >

< div


class ="comment__reply-form js-form_placeholder" > < / div >

< / div >

< ul


class ="content-list content-list_nested-comments content-list_nested-comments-0" id="reply_comments_18943719" > < / ul >

< / li >
< li


class ="content-list__item content-list__item_comment js-comment " rel="18945069" >

< span


class ="parent_id" data-parent_id="0" > < / span >

< div


class ="comment" id="comment_18945069" >

< span


class ="comment__folding-dotholder" > < / span >

< div


class ="comment__head   " rel="18945069" >

< a
href = "https://habr.com/users/JobberNet/"


class ="user-info user-info_inline" data-user-login="JobberNet" >

< svg


class ="default-image default-image_mini default-image_green" width="24" height="24" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#slug" > <

/ use > < / svg >
< span


class ="user-info__nickname user-info__nickname_small user-info__nickname_comment" > JobberNet < / span >

< / a >

< svg


class ="icon_comment-edit" title="Комментарий был изменен" width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#pencil" > <

/ use > < / svg >
< time


class ="comment__date-time comment__date-time_published" > 01.08.18 в 09:40 <

/ time >
< ul


class ="inline-list inline-list_comment-nav" >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18945069"


class ="icon_comment-anchor" title="Ссылка на комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#anchor" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#"


class ="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18945069" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled="" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#book" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav hidden js-comment_children" >

< a
href = "#comment_18945069"


class ="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18945069" data-parent_id="0" title="Вернуться к ответу" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >
< / ul >

< div


class ="voting-wjt voting-wjt_comments js-comment-vote" data-id="18945069" data-post-target="418819" data-type="3" >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-up" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >

< span


class ="voting-wjt__counter voting-wjt__counter_positive  js-score" title="Общий рейтинг 1: ↑1 и ↓0" > +1 < / span >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-down" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >
< / div >

< / div >

< div


class ="comment__message " > < blockquote > атомное облако начинает вести себя целиком как некий одиночный «суператом» < / blockquote > То, есть пуляя облаками через две дырки возможно получить интеринтерференционную картину? < br >

< div


class ="spoiler" > < b class ="spoiler_title" > Заголовок спойлера < / b > < div class ="spoiler_text" > < img src="https://habrastorage.org/getpro/habr/comment_images/232/a3d/4f0/232a3d4f0f7e9e653edb1791c79ec5a4.jpg" alt="image" > < br >

< / div > < / div > < / div >

< div


class ="comment__footer" >

< / div >

< div


class ="comment__reply-form js-form_placeholder" > < / div >

< / div >

< ul


class ="content-list content-list_nested-comments content-list_nested-comments-0" id="reply_comments_18945069" > < li class ="content-list__item content-list__item_comment js-comment " rel="18945589" >

< span


class ="parent_id" data-parent_id="18945069" > < / span >

< div


class ="comment" id="comment_18945589" >

< span


class ="comment__folding-dotholder" > < / span >

< div


class ="comment__head   " rel="18945589" >

< a
href = "https://habr.com/users/qbertych/"


class ="user-info user-info_inline" data-user-login="qbertych" >

< img
src = "//habrastorage.org/getpro/habr/avatars/f66/ac5/29f/f66ac529f690b4d714a347aa5ba81cce_small.png"


class ="user-info__image-pic user-info__image-pic_small" width="24" height="24" >

< span


class ="user-info__nickname user-info__nickname_small user-info__nickname_comment" > qbertych < / span >

< / a >

< time


class ="comment__date-time comment__date-time_published" > 01.08.18 в 11:0


8 < / time >
< ul


class ="inline-list inline-list_comment-nav" >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18945589"


class ="icon_comment-anchor" title="Ссылка на комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#anchor" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#"


class ="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18945589" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled="" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#book" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< span


class ="icon_comment-branch js-comment_tree" data-id="18945589" data-parent_id="18945069" title="Показать ветку комментариев" > < svg width="8" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#tree" > <

/ use > < / svg > < / span >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18945069"


class ="icon_comment-arrow-up js-comment_parent" data-id="18945589" data-parent_id="18945069" title="Показать предыдущий комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav hidden js-comment_children" >

< a
href = "#comment_18945589"


class ="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18945589" data-parent_id="18945069" title="Вернуться к ответу" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >
< / ul >

< div


class ="voting-wjt voting-wjt_comments js-comment-vote" data-id="18945589" data-post-target="418819" data-type="3" >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-up" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >

< span


class ="voting-wjt__counter voting-wjt__counter_positive  js-score" title="Общий рейтинг 1: ↑1 и ↓0" > +1 < / span >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-down" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >
< / div >

< / div >

< div


class ="comment__message " > < p > Ага.< / p > < br >

< p > В
одном
из
первых
экспериментов
делали
проще: конденсат
делили
на
две
части, а
потом
сталкивали
их
друг
с
другом.В
том, что
получилось, слои
с
большой
плотностью
атомов
чередовались
с
почти
пустыми
слоями. < / p > < br >
< p > Нобелевскую
за
это, само
собой, дали. < / p > < / div >

< div


class ="comment__footer" >

< / div >

< div


class ="comment__reply-form js-form_placeholder" > < / div >

< / div >

< ul


class ="content-list content-list_nested-comments content-list_nested-comments-1" id="reply_comments_18945589" > < / ul >

< / li >
< / ul >
< / li >
< li


class ="content-list__item content-list__item_comment js-comment " rel="18945145" >

< span


class ="parent_id" data-parent_id="0" > < / span >

< div


class ="comment" id="comment_18945145" >

< span


class ="comment__folding-dotholder" > < / span >

< div


class ="comment__head   " rel="18945145" >

< a
href = "https://habr.com/users/GeMir/"


class ="user-info user-info_inline" data-user-login="GeMir" >

< img
src = "//habrastorage.org/getpro/habr/avatars/6f4/a82/345/6f4a823452f29b558109e6da593f5d13_small.jpg"


class ="user-info__image-pic user-info__image-pic_small" width="24" height="24" >

< span


class ="user-info__nickname user-info__nickname_small user-info__nickname_comment" > GeMir < / span >

< / a >

< svg


class ="icon_comment-edit" title="Комментарий был изменен" width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#pencil" > <

/ use > < / svg >
< time


class ="comment__date-time comment__date-time_published" > 01.08.18 в 09:56 <

/ time >
< ul


class ="inline-list inline-list_comment-nav" >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18945145"


class ="icon_comment-anchor" title="Ссылка на комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#anchor" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#"


class ="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18945145" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled="" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#book" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav hidden js-comment_children" >

< a
href = "#comment_18945145"


class ="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18945145" data-parent_id="0" title="Вернуться к ответу" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >
< / ul >

< div


class ="voting-wjt voting-wjt_comments js-comment-vote" data-id="18945145" data-post-target="418819" data-type="3" >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-up" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >

< span


class ="voting-wjt__counter  voting-wjt__counter_negative js-score" title="Общий рейтинг 1: ↑0 и ↓1" > –1 < / span >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-down" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >
< / div >

< / div >

< div


class ="comment__message comment__message_downgrade comment__message_downgrade-1" > < blockquote > установка холодных атомов[…] будет генерировать ультрахолодные атомы < / blockquote > Капитан О., мы вам всегда рады.< br >

< blockquote > Атомы
охлаждены
до
одной
десятимиллиардной
доли
градуса
выше
абсолютного
нуля < / blockquote > 0, 0000000001
K. < br >
< blockquote > в
среднем
это
в
десять
миллиардов
раз
холоднее, чем
в
глубоком
космосе < / blockquote > 0, 0000000001 * 10.000
.000
.000 = 1
K. < br >
Числа
обычно
проще
сравнивать, чем
числительные. < / div >

< div


class ="comment__footer" >

< / div >

< div


class ="comment__reply-form js-form_placeholder" > < / div >

< / div >

< ul


class ="content-list content-list_nested-comments content-list_nested-comments-0" id="reply_comments_18945145" > < li class ="content-list__item content-list__item_comment js-comment " rel="18945261" >

< span


class ="parent_id" data-parent_id="18945145" > < / span >

< div


class ="comment" id="comment_18945261" >

< span


class ="comment__folding-dotholder" > < / span >

< div


class ="comment__head   " rel="18945261" >

< a
href = "https://habr.com/users/balexa/"


class ="user-info user-info_inline" data-user-login="balexa" >

< svg


class ="default-image default-image_mini default-image_pink" width="24" height="24" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#slug" > <

/ use > < / svg >
< span


class ="user-info__nickname user-info__nickname_small user-info__nickname_comment" > balexa < / span >

< / a >

< time


class ="comment__date-time comment__date-time_published" > 01.08.18 в 10:18 <

/ time >
< ul


class ="inline-list inline-list_comment-nav" >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18945261"


class ="icon_comment-anchor" title="Ссылка на комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#anchor" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#"


class ="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18945261" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled="" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#book" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< span


class ="icon_comment-branch js-comment_tree" data-id="18945261" data-parent_id="18945145" title="Показать ветку комментариев" > < svg width="8" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#tree" > <

/ use > < / svg > < / span >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18945145"


class ="icon_comment-arrow-up js-comment_parent" data-id="18945261" data-parent_id="18945145" title="Показать предыдущий комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav hidden js-comment_children" >

< a
href = "#comment_18945261"


class ="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18945261" data-parent_id="18945145" title="Вернуться к ответу" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >
< / ul >

< div


class ="voting-wjt voting-wjt_comments js-comment-vote" data-id="18945261" data-post-target="418819" data-type="3" >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-up" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >

< span


class ="voting-wjt__counter voting-wjt__counter_positive  js-score" title="Общий рейтинг 3: ↑3 и ↓0" > +3 < / span >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-down" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >
< / div >

< / div >

< div


class ="comment__message " > < blockquote > 0, 0000000001 < / blockquote > < br >


1e-10 < br >
:) < / div >

       < div


class ="comment__footer" >

< / div >

< div


class ="comment__reply-form js-form_placeholder" > < / div >

< / div >

< ul


class ="content-list content-list_nested-comments content-list_nested-comments-1" id="reply_comments_18945261" > < li class ="content-list__item content-list__item_comment js-comment " rel="18946109" >

< span


class ="parent_id" data-parent_id="18945261" > < / span >

< div


class ="comment" id="comment_18946109" >

< span


class ="comment__folding-dotholder" > < / span >

< div


class ="comment__head   " rel="18946109" >

< a
href = "https://habr.com/users/GeMir/"


class ="user-info user-info_inline" data-user-login="GeMir" >

< img
src = "//habrastorage.org/getpro/habr/avatars/6f4/a82/345/6f4a823452f29b558109e6da593f5d13_small.jpg"


class ="user-info__image-pic user-info__image-pic_small" width="24" height="24" >

< span


class ="user-info__nickname user-info__nickname_small user-info__nickname_comment" > GeMir < / span >

< / a >

< svg


class ="icon_comment-edit" title="Комментарий был изменен" width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#pencil" > <

/ use > < / svg >
< time


class ="comment__date-time comment__date-time_published" > 01.08.18 в 12:39 <

/ time >
< ul


class ="inline-list inline-list_comment-nav" >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18946109"


class ="icon_comment-anchor" title="Ссылка на комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#anchor" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#"


class ="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18946109" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled="" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#book" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< span


class ="icon_comment-branch js-comment_tree" data-id="18946109" data-parent_id="18945261" title="Показать ветку комментариев" > < svg width="8" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#tree" > <

/ use > < / svg > < / span >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18945261"


class ="icon_comment-arrow-up js-comment_parent" data-id="18946109" data-parent_id="18945261" title="Показать предыдущий комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav hidden js-comment_children" >

< a
href = "#comment_18946109"


class ="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18946109" data-parent_id="18945261" title="Вернуться к ответу" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >
< / ul >

< div


class ="voting-wjt voting-wjt_comments js-comment-vote" data-id="18946109" data-post-target="418819" data-type="3" >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-up" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >

< span


class ="voting-wjt__counter voting-wjt__counter_positive  js-score" title="Общий рейтинг 1: ↑1 и ↓0" > +1 < / span >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-down" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >
< / div >

< / div >

< div


class ="comment__message " > < blockquote > 1e-10 < / blockquote > Ну или 100 пК, если уж в СИ:)

    < / div >

        < div


class ="comment__footer" >

< / div >

< div


class ="comment__reply-form js-form_placeholder" > < / div >

< / div >

< ul


class ="content-list content-list_nested-comments content-list_nested-comments-2" id="reply_comments_18946109" > < / ul >

< / li >
< / ul >
< / li >
< / ul >
< / li >
< li


class ="content-list__item content-list__item_comment js-comment " rel="18945885" >

< span


class ="parent_id" data-parent_id="0" > < / span >

< div


class ="comment" id="comment_18945885" >

< span


class ="comment__folding-dotholder" > < / span >

< div


class ="comment__head   " rel="18945885" >

< a
href = "https://habr.com/users/Dmitry88/"


class ="user-info user-info_inline" data-user-login="Dmitry88" >

< svg


class ="default-image default-image_mini default-image_blue" width="24" height="24" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#slug" > <

/ use > < / svg >
< span


class ="user-info__nickname user-info__nickname_small user-info__nickname_comment" > Dmitry88 < / span >

< / a >

< time


class ="comment__date-time comment__date-time_published" > 01.08.18 в 12:00 <

/ time >
< ul


class ="inline-list inline-list_comment-nav" >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18945885"


class ="icon_comment-anchor" title="Ссылка на комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#anchor" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#"


class ="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18945885" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled="" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#book" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav hidden js-comment_children" >

< a
href = "#comment_18945885"


class ="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18945885" data-parent_id="0" title="Вернуться к ответу" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >
< / ul >

< div


class ="voting-wjt voting-wjt_comments js-comment-vote" data-id="18945885" data-post-target="418819" data-type="3" >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-up" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >

< span


class ="voting-wjt__counter   js-score" title="Общий рейтинг 0: ↑0 и ↓0" > 0 < / span >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-down" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >
< / div >

< / div >

< div


class ="comment__message " > Я таки не понял, бозоны становятся волной или остаются бозонами(масса остается), но обезличенными.Этакий суператом < / div >

< div


class ="comment__footer" >

< / div >

< div


class ="comment__reply-form js-form_placeholder" > < / div >

< / div >

< ul


class ="content-list content-list_nested-comments content-list_nested-comments-0" id="reply_comments_18945885" > < / ul >

< / li >
< li


class ="content-list__item content-list__item_comment js-comment " rel="18947081" >

< span


class ="parent_id" data-parent_id="0" > < / span >

< div


class ="comment" id="comment_18947081" >

< span


class ="comment__folding-dotholder" > < / span >

< div


class ="comment__head   " rel="18947081" >

< a
href = "https://habr.com/users/ForestLabs/"


class ="user-info user-info_inline" data-user-login="ForestLabs" >

< svg


class ="default-image default-image_mini default-image_pink" width="24" height="24" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#slug" > <

/ use > < / svg >
< span


class ="user-info__nickname user-info__nickname_small user-info__nickname_comment" > ForestLabs < / span >

< / a >

< time


class ="comment__date-time comment__date-time_published" > 01.08.18 в 16:36 <

/ time >
< ul


class ="inline-list inline-list_comment-nav" >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18947081"


class ="icon_comment-anchor" title="Ссылка на комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#anchor" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#"


class ="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18947081" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled="" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#book" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav hidden js-comment_children" >

< a
href = "#comment_18947081"


class ="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18947081" data-parent_id="0" title="Вернуться к ответу" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >
< / ul >

< div


class ="voting-wjt voting-wjt_comments js-comment-vote" data-id="18947081" data-post-target="418819" data-type="3" >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-up" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >

< span


class ="voting-wjt__counter  voting-wjt__counter_negative js-score" title="Общий рейтинг 1: ↑0 и ↓1" > –1 < / span >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-down" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >
< / div >

< / div >

< div


class ="comment__message comment__message_downgrade comment__message_downgrade-1" > < p > Стругацкие — провидцы.< / p > < br >

< pre > < code > Попугай
вздрогнул
и
чуть
не
свалился
с
весов.Помахав
крыльями, чтобы < / code > < / pre > < br >
< p > восстановить
равновесие, он
отозвался: < / p > < br >
< ul >
< li > Р - резерв! Кр - ратер
Ричи! < br >
Мы
переглянулись. < / li >
< li > Р - резерв! — гаркнул
Витька. < / li >
< li > Огр - ромен! Гр - руды! Гр - руды! Р - ричи
пр - рав! Р - ричи
пр - рав! < br >
Р - роботы! Р - роботы! < / li >
< li > Роботы! < / li >
< li > Кр - рах! Гор - рят! Атмосфер - ра
гор - рит! Пр - рочь! Др - рамба, пр - рочь! < / li >
< li > Драмба! < / li >
< li > Р - рубидий! Р - резерв! < / li >
< li > Рубидий! < / li >
< / ul > < / div >

< div


class ="comment__footer" >

< / div >

< div


class ="comment__reply-form js-form_placeholder" > < / div >

< / div >

< ul


class ="content-list content-list_nested-comments content-list_nested-comments-0" id="reply_comments_18947081" > < / ul >

< / li >
< li


class ="content-list__item content-list__item_comment js-comment " rel="18947485" >

< span


class ="parent_id" data-parent_id="0" > < / span >

< div


class ="comment" id="comment_18947485" >

< span


class ="comment__folding-dotholder" > < / span >

< div


class ="comment__head   " rel="18947485" >

< a
href = "https://habr.com/users/da-nie/"


class ="user-info user-info_inline" data-user-login="da-nie" >

< img
src = "//habrastorage.org/getpro/habr/avatars/609/4f1/e7e/6094f1e7e908482554b2f4db37324628_small.jpg"


class ="user-info__image-pic user-info__image-pic_small" width="24" height="24" >

< span


class ="user-info__nickname user-info__nickname_small user-info__nickname_comment" > da-nie < / span >

< / a >

< svg


class ="icon_comment-edit" title="Комментарий был изменен" width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#pencil" > <

/ use > < / svg >
< time


class ="comment__date-time comment__date-time_published" > 01.08.18 в 17:58 <

/ time >
< ul


class ="inline-list inline-list_comment-nav" >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#comment_18947485"


class ="icon_comment-anchor" title="Ссылка на комментарий" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#anchor" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav" >

< a
href = "#"


class ="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18947485" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled="" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#book" > <

/ use > < / svg > < / a >
< / li >

< li


class ="inline-list__item inline-list__item_comment-nav hidden js-comment_children" >

< a
href = "#comment_18947485"


class ="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18947485" data-parent_id="0" title="Вернуться к ответу" > < svg width="12" height="12" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow" > <

/ use > < / svg > < / a >
< / li >
< / ul >

< div


class ="voting-wjt voting-wjt_comments js-comment-vote" data-id="18947485" data-post-target="418819" data-type="3" >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-up" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >

< span


class ="voting-wjt__counter   js-score" title="Общий рейтинг 0: ↑0 и ↓0" > 0 < / span >

< button
type = "button"


class ="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled="" > < svg class ="icon-svg_arrow-down" width="10" height="16" > < use xlink:href = "https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow" > <

/ use > < / svg > < / button >
< / div >

< / div >

< div


class ="comment__message " > < blockquote > бсолютного нуля, точки, при достижении которой — теоретически — в любом веществе прекращается тепловое движение частиц.< / blockquote > < br >

< br >
А
как
же
соотношение
неопределённости?;) < / div >

                        < div


class ="comment__footer" >

< / div >

< div


class ="comment__reply-form js-form_placeholder" > < / div >

< / div >

< ul


class ="content-list content-list_nested-comments content-list_nested-comments-0" id="reply_comments_18947485" > < / ul >

< / li >

< / ul ><ul class="content-list content-list_comments" id="comments-list">
        <li class="content-list__item content-list__item_comment js-comment " rel="18943439">

    <span class="parent_id" data-parent_id="0"></span>
    <div class="comment" id="comment_18943439">
        <span class="comment__folding-dotholder"></span>
        <div class="comment__head   " rel="18943439">
          <a href="https://habr.com/users/pudovMaxim/" class="user-info user-info_inline" data-user-login="pudovMaxim">
    <svg class="default-image default-image_mini default-image_blue" width="24" height="24"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#slug"></use></svg>
  <span class="user-info__nickname user-info__nickname_small user-info__nickname_comment">pudovMaxim</span>
</a>


          <time class="comment__date-time comment__date-time_published">31.07.18 в 20:51</time>
          <ul class="inline-list inline-list_comment-nav">
  <li class="inline-list__item inline-list__item_comment-nav">
    <a href="#comment_18943439" class="icon_comment-anchor" title="Ссылка на комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#anchor"></use></svg></a>
  </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#" class="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18943439" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled=""><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#book"></use></svg></a>
    </li>


  <li class="inline-list__item inline-list__item_comment-nav hidden js-comment_children">
    <a href="#comment_18943439" class="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18943439" data-parent_id="0" title="Вернуться к ответу"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
  </li>
</ul>

            <div class="voting-wjt voting-wjt_comments js-comment-vote" data-id="18943439" data-post-target="418819" data-type="3">
    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-up" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>

    <span class="voting-wjt__counter   js-score" title="Общий рейтинг 0: ↑0 и ↓0">0</span>

    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-down" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>
  </div>

        </div>

        <div class="comment__message ">А как наблюдают за такими атомами? По идее, любое внешнее воздействие должно нагревать их или нет?</div>

        <div class="comment__footer">
</div>

        <div class="comment__reply-form js-form_placeholder"></div>
    </div>

    <ul class="content-list content-list_nested-comments content-list_nested-comments-0" id="reply_comments_18943439">  <li class="content-list__item content-list__item_comment js-comment " rel="18943449">

    <span class="parent_id" data-parent_id="18943439"></span>
    <div class="comment" id="comment_18943449">
        <span class="comment__folding-dotholder"></span>
        <div class="comment__head comment__head_topic-author  " rel="18943449">
          <a href="https://habr.com/users/OriSvet/" class="user-info user-info_inline" data-user-login="OriSvet">
    <svg class="default-image default-image_mini default-image_green" width="24" height="24"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#slug"></use></svg>
  <span class="user-info__nickname user-info__nickname_small user-info__nickname_comment">OriSvet</span>
</a>


          <time class="comment__date-time comment__date-time_published">31.07.18 в 20:53</time>
          <ul class="inline-list inline-list_comment-nav">
  <li class="inline-list__item inline-list__item_comment-nav">
    <a href="#comment_18943449" class="icon_comment-anchor" title="Ссылка на комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#anchor"></use></svg></a>
  </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#" class="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18943449" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled=""><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#book"></use></svg></a>
    </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <span class="icon_comment-branch js-comment_tree" data-id="18943449" data-parent_id="18943439" title="Показать ветку комментариев"><svg width="8" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#tree"></use></svg></span>
    </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#comment_18943439" class="icon_comment-arrow-up js-comment_parent" data-id="18943449" data-parent_id="18943439" title="Показать предыдущий комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
    </li>

  <li class="inline-list__item inline-list__item_comment-nav hidden js-comment_children">
    <a href="#comment_18943449" class="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18943449" data-parent_id="18943439" title="Вернуться к ответу"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
  </li>
</ul>

            <div class="voting-wjt voting-wjt_comments js-comment-vote" data-id="18943449" data-post-target="418819" data-type="3">
    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-up" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>

    <span class="voting-wjt__counter   js-score" title="Общий рейтинг 0: ↑0 и ↓0">0</span>

    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-down" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>
  </div>

        </div>

        <div class="comment__message ">Квантовая физика это что-то вообще из области магии, по-моему.</div>

        <div class="comment__footer">
</div>

        <div class="comment__reply-form js-form_placeholder"></div>
    </div>

    <ul class="content-list content-list_nested-comments content-list_nested-comments-1" id="reply_comments_18943449">  <li class="content-list__item content-list__item_comment js-comment " rel="18944107">

    <span class="parent_id" data-parent_id="18943449"></span>
    <div class="comment" id="comment_18944107">
        <span class="comment__folding-dotholder"></span>
        <div class="comment__head   " rel="18944107">
          <a href="https://habr.com/users/Jeyko/" class="user-info user-info_inline" data-user-login="Jeyko">
    <svg class="default-image default-image_mini default-image_green" width="24" height="24"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#slug"></use></svg>
  <span class="user-info__nickname user-info__nickname_small user-info__nickname_comment">Jeyko</span>
</a>


          <time class="comment__date-time comment__date-time_published">31.07.18 в 23:44</time>
          <ul class="inline-list inline-list_comment-nav">
  <li class="inline-list__item inline-list__item_comment-nav">
    <a href="#comment_18944107" class="icon_comment-anchor" title="Ссылка на комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#anchor"></use></svg></a>
  </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#" class="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18944107" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled=""><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#book"></use></svg></a>
    </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <span class="icon_comment-branch js-comment_tree" data-id="18944107" data-parent_id="18943449" title="Показать ветку комментариев"><svg width="8" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#tree"></use></svg></span>
    </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#comment_18943449" class="icon_comment-arrow-up js-comment_parent" data-id="18944107" data-parent_id="18943449" title="Показать предыдущий комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
    </li>

  <li class="inline-list__item inline-list__item_comment-nav hidden js-comment_children">
    <a href="#comment_18944107" class="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18944107" data-parent_id="18943449" title="Вернуться к ответу"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
  </li>
</ul>

            <div class="voting-wjt voting-wjt_comments js-comment-vote" data-id="18944107" data-post-target="418819" data-type="3">
    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-up" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>

    <span class="voting-wjt__counter voting-wjt__counter_positive  js-score" title="Общий рейтинг 7: ↑7 и ↓0">+7</span>

    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-down" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>
  </div>

        </div>

        <div class="comment__message ">«Any sufficiently advanced technology is indistinguishable from magic.»… ©</div>

        <div class="comment__footer">
</div>

        <div class="comment__reply-form js-form_placeholder"></div>
    </div>

    <ul class="content-list content-list_nested-comments content-list_nested-comments-2" id="reply_comments_18944107">  <li class="content-list__item content-list__item_comment js-comment " rel="18944133">

    <span class="parent_id" data-parent_id="18944107"></span>
    <div class="comment" id="comment_18944133">
        <span class="comment__folding-dotholder"></span>
        <div class="comment__head comment__head_topic-author  " rel="18944133">
          <a href="https://habr.com/users/OriSvet/" class="user-info user-info_inline" data-user-login="OriSvet">
    <svg class="default-image default-image_mini default-image_green" width="24" height="24"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#slug"></use></svg>
  <span class="user-info__nickname user-info__nickname_small user-info__nickname_comment">OriSvet</span>
</a>


          <time class="comment__date-time comment__date-time_published">31.07.18 в 23:47</time>
          <ul class="inline-list inline-list_comment-nav">
  <li class="inline-list__item inline-list__item_comment-nav">
    <a href="#comment_18944133" class="icon_comment-anchor" title="Ссылка на комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#anchor"></use></svg></a>
  </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#" class="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18944133" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled=""><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#book"></use></svg></a>
    </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <span class="icon_comment-branch js-comment_tree" data-id="18944133" data-parent_id="18944107" title="Показать ветку комментариев"><svg width="8" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#tree"></use></svg></span>
    </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#comment_18944107" class="icon_comment-arrow-up js-comment_parent" data-id="18944133" data-parent_id="18944107" title="Показать предыдущий комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
    </li>

  <li class="inline-list__item inline-list__item_comment-nav hidden js-comment_children">
    <a href="#comment_18944133" class="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18944133" data-parent_id="18944107" title="Вернуться к ответу"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
  </li>
</ul>

            <div class="voting-wjt voting-wjt_comments js-comment-vote" data-id="18944133" data-post-target="418819" data-type="3">
    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-up" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>

    <span class="voting-wjt__counter  voting-wjt__counter_negative js-score" title="Общий рейтинг 2: ↑0 и ↓2">–2</span>

    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-down" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>
  </div>

        </div>

        <div class="comment__message comment__message_downgrade comment__message_downgrade-2">За цитату — респект!</div>

        <div class="comment__footer">
</div>

        <div class="comment__reply-form js-form_placeholder"></div>
    </div>

    <ul class="content-list content-list_nested-comments content-list_nested-comments-3" id="reply_comments_18944133">  <li class="content-list__item content-list__item_comment js-comment " rel="18944297">

    <span class="parent_id" data-parent_id="18944133"></span>
    <div class="comment" id="comment_18944297">
        <span class="comment__folding-dotholder"></span>
        <div class="comment__head   " rel="18944297">
          <a href="https://habr.com/users/Jeyko/" class="user-info user-info_inline" data-user-login="Jeyko">
    <svg class="default-image default-image_mini default-image_green" width="24" height="24"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#slug"></use></svg>
  <span class="user-info__nickname user-info__nickname_small user-info__nickname_comment">Jeyko</span>
</a>


          <time class="comment__date-time comment__date-time_published">01.08.18 в 00:57</time>
          <ul class="inline-list inline-list_comment-nav">
  <li class="inline-list__item inline-list__item_comment-nav">
    <a href="#comment_18944297" class="icon_comment-anchor" title="Ссылка на комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#anchor"></use></svg></a>
  </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#" class="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18944297" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled=""><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#book"></use></svg></a>
    </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <span class="icon_comment-branch js-comment_tree" data-id="18944297" data-parent_id="18944133" title="Показать ветку комментариев"><svg width="8" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#tree"></use></svg></span>
    </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#comment_18944133" class="icon_comment-arrow-up js-comment_parent" data-id="18944297" data-parent_id="18944133" title="Показать предыдущий комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
    </li>

  <li class="inline-list__item inline-list__item_comment-nav hidden js-comment_children">
    <a href="#comment_18944297" class="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18944297" data-parent_id="18944133" title="Вернуться к ответу"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
  </li>
</ul>

            <div class="voting-wjt voting-wjt_comments js-comment-vote" data-id="18944297" data-post-target="418819" data-type="3">
    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-up" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>

    <span class="voting-wjt__counter  voting-wjt__counter_negative js-score" title="Общий рейтинг 3: ↑0 и ↓3">–3</span>

    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-down" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>
  </div>

        </div>

        <div class="comment__message comment__message_downgrade comment__message_downgrade-3">: )</div>

        <div class="comment__footer">
</div>

        <div class="comment__reply-form js-form_placeholder"></div>
    </div>

    <ul class="content-list content-list_nested-comments content-list_nested-comments-4" id="reply_comments_18944297"></ul>
  </li>
</ul>
  </li>
</ul>
  </li>
</ul>
  </li>
  <li class="content-list__item content-list__item_comment js-comment " rel="18944277">

    <span class="parent_id" data-parent_id="18943439"></span>
    <div class="comment" id="comment_18944277">
        <span class="comment__folding-dotholder"></span>
        <div class="comment__head   " rel="18944277">
          <a href="https://habr.com/users/Revetements_Etales/" class="user-info user-info_inline" data-user-login="Revetements_Etales">
    <svg class="default-image default-image_mini default-image_green" width="24" height="24"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#slug"></use></svg>
  <span class="user-info__nickname user-info__nickname_small user-info__nickname_comment">Revetements_Etales</span>
</a>


          <time class="comment__date-time comment__date-time_published">01.08.18 в 00:42</time>
          <ul class="inline-list inline-list_comment-nav">
  <li class="inline-list__item inline-list__item_comment-nav">
    <a href="#comment_18944277" class="icon_comment-anchor" title="Ссылка на комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#anchor"></use></svg></a>
  </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#" class="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18944277" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled=""><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#book"></use></svg></a>
    </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <span class="icon_comment-branch js-comment_tree" data-id="18944277" data-parent_id="18943439" title="Показать ветку комментариев"><svg width="8" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#tree"></use></svg></span>
    </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#comment_18943439" class="icon_comment-arrow-up js-comment_parent" data-id="18944277" data-parent_id="18943439" title="Показать предыдущий комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
    </li>

  <li class="inline-list__item inline-list__item_comment-nav hidden js-comment_children">
    <a href="#comment_18944277" class="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18944277" data-parent_id="18943439" title="Вернуться к ответу"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
  </li>
</ul>

            <div class="voting-wjt voting-wjt_comments js-comment-vote" data-id="18944277" data-post-target="418819" data-type="3">
    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-up" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>

    <span class="voting-wjt__counter voting-wjt__counter_positive  js-score" title="Общий рейтинг 3: ↑3 и ↓0">+3</span>

    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-down" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>
  </div>

        </div>

        <div class="comment__message "><a href="https://coldatomlab.jpl.nasa.gov/sciencemeasurements/">coldatomlab.jpl.nasa.gov/sciencemeasurements</a><br>
<blockquote>We image the atoms with a pair of laser beam flashes; the first flash captures a «shadow» of the atom cloud, while the second flash records a reference image. We can then process the images to get the density distribution of the cloud (in these images RED is the most dense while BLACK is zero density). The expansion rate provides a measurement of the temperature of the ultra cold Rb</blockquote></div>

        <div class="comment__footer">
</div>

        <div class="comment__reply-form js-form_placeholder"></div>
    </div>

    <ul class="content-list content-list_nested-comments content-list_nested-comments-1" id="reply_comments_18944277">  <li class="content-list__item content-list__item_comment js-comment " rel="18944331">

    <span class="parent_id" data-parent_id="18944277"></span>
    <div class="comment" id="comment_18944331">
        <span class="comment__folding-dotholder"></span>
        <div class="comment__head comment__head_topic-author  " rel="18944331">
          <a href="https://habr.com/users/OriSvet/" class="user-info user-info_inline" data-user-login="OriSvet">
    <svg class="default-image default-image_mini default-image_green" width="24" height="24"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#slug"></use></svg>
  <span class="user-info__nickname user-info__nickname_small user-info__nickname_comment">OriSvet</span>
</a>


          <time class="comment__date-time comment__date-time_published">01.08.18 в 01:23</time>
          <ul class="inline-list inline-list_comment-nav">
  <li class="inline-list__item inline-list__item_comment-nav">
    <a href="#comment_18944331" class="icon_comment-anchor" title="Ссылка на комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#anchor"></use></svg></a>
  </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#" class="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18944331" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled=""><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#book"></use></svg></a>
    </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <span class="icon_comment-branch js-comment_tree" data-id="18944331" data-parent_id="18944277" title="Показать ветку комментариев"><svg width="8" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#tree"></use></svg></span>
    </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#comment_18944277" class="icon_comment-arrow-up js-comment_parent" data-id="18944331" data-parent_id="18944277" title="Показать предыдущий комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
    </li>

  <li class="inline-list__item inline-list__item_comment-nav hidden js-comment_children">
    <a href="#comment_18944331" class="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18944331" data-parent_id="18944277" title="Вернуться к ответу"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
  </li>
</ul>

            <div class="voting-wjt voting-wjt_comments js-comment-vote" data-id="18944331" data-post-target="418819" data-type="3">
    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-up" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>

    <span class="voting-wjt__counter   js-score" title="Общий рейтинг 0: ↑0 и ↓0">0</span>

    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-down" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>
  </div>

        </div>

        <div class="comment__message ">Точно магия. Спасибо!</div>

        <div class="comment__footer">
</div>

        <div class="comment__reply-form js-form_placeholder"></div>
    </div>

    <ul class="content-list content-list_nested-comments content-list_nested-comments-2" id="reply_comments_18944331"></ul>
  </li>
</ul>
  </li>
</ul>
  </li>
  <li class="content-list__item content-list__item_comment js-comment " rel="18943719">

    <span class="parent_id" data-parent_id="0"></span>
    <div class="comment" id="comment_18943719">
        <span class="comment__folding-dotholder"></span>
        <div class="comment__head   " rel="18943719">
          <a href="https://habr.com/users/Sirion/" class="user-info user-info_inline" data-user-login="Sirion">
    <img src="//habrastorage.org/getpro/habr/avatars/f57/a8c/4c2/f57a8c4c20c5fdcfb5e0ecb86ad9dc72_small.jpg" class="user-info__image-pic user-info__image-pic_small" width="24" height="24">
  <span class="user-info__nickname user-info__nickname_small user-info__nickname_comment">Sirion</span>
</a>


          <time class="comment__date-time comment__date-time_published">31.07.18 в 22:07</time>
          <ul class="inline-list inline-list_comment-nav">
  <li class="inline-list__item inline-list__item_comment-nav">
    <a href="#comment_18943719" class="icon_comment-anchor" title="Ссылка на комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#anchor"></use></svg></a>
  </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#" class="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18943719" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled=""><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#book"></use></svg></a>
    </li>


  <li class="inline-list__item inline-list__item_comment-nav hidden js-comment_children">
    <a href="#comment_18943719" class="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18943719" data-parent_id="0" title="Вернуться к ответу"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
  </li>
</ul>

            <div class="voting-wjt voting-wjt_comments js-comment-vote" data-id="18943719" data-post-target="418819" data-type="3">
    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-up" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>

    <span class="voting-wjt__counter voting-wjt__counter_positive  js-score" title="Общий рейтинг 10: ↑7 и ↓3">+4</span>

    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-down" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>
  </div>

        </div>

        <div class="comment__message ">*шутка про сердце твоей бывшей*</div>

        <div class="comment__footer">
</div>

        <div class="comment__reply-form js-form_placeholder"></div>
    </div>

    <ul class="content-list content-list_nested-comments content-list_nested-comments-0" id="reply_comments_18943719"></ul>
  </li>
  <li class="content-list__item content-list__item_comment js-comment " rel="18945069">

    <span class="parent_id" data-parent_id="0"></span>
    <div class="comment" id="comment_18945069">
        <span class="comment__folding-dotholder"></span>
        <div class="comment__head   " rel="18945069">
          <a href="https://habr.com/users/JobberNet/" class="user-info user-info_inline" data-user-login="JobberNet">
    <svg class="default-image default-image_mini default-image_green" width="24" height="24"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#slug"></use></svg>
  <span class="user-info__nickname user-info__nickname_small user-info__nickname_comment">JobberNet</span>
</a>

          <svg class="icon_comment-edit" title="Комментарий был изменен" width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#pencil"></use></svg>
          <time class="comment__date-time comment__date-time_published">01.08.18 в 09:40</time>
          <ul class="inline-list inline-list_comment-nav">
  <li class="inline-list__item inline-list__item_comment-nav">
    <a href="#comment_18945069" class="icon_comment-anchor" title="Ссылка на комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#anchor"></use></svg></a>
  </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#" class="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18945069" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled=""><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#book"></use></svg></a>
    </li>


  <li class="inline-list__item inline-list__item_comment-nav hidden js-comment_children">
    <a href="#comment_18945069" class="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18945069" data-parent_id="0" title="Вернуться к ответу"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
  </li>
</ul>

            <div class="voting-wjt voting-wjt_comments js-comment-vote" data-id="18945069" data-post-target="418819" data-type="3">
    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-up" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>

    <span class="voting-wjt__counter voting-wjt__counter_positive  js-score" title="Общий рейтинг 1: ↑1 и ↓0">+1</span>

    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-down" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>
  </div>

        </div>

        <div class="comment__message "><blockquote>атомное облако начинает вести себя целиком как некий одиночный «суператом»</blockquote>То, есть пуляя облаками через две дырки возможно получить интеринтерференционную картину?<br>
<div class="spoiler"><b class="spoiler_title">Заголовок спойлера</b><div class="spoiler_text"><img src="https://habrastorage.org/getpro/habr/comment_images/232/a3d/4f0/232a3d4f0f7e9e653edb1791c79ec5a4.jpg" alt="image"><br>
</div></div></div>

        <div class="comment__footer">
</div>

        <div class="comment__reply-form js-form_placeholder"></div>
    </div>

    <ul class="content-list content-list_nested-comments content-list_nested-comments-0" id="reply_comments_18945069">  <li class="content-list__item content-list__item_comment js-comment " rel="18945589">

    <span class="parent_id" data-parent_id="18945069"></span>
    <div class="comment" id="comment_18945589">
        <span class="comment__folding-dotholder"></span>
        <div class="comment__head   " rel="18945589">
          <a href="https://habr.com/users/qbertych/" class="user-info user-info_inline" data-user-login="qbertych">
    <img src="//habrastorage.org/getpro/habr/avatars/f66/ac5/29f/f66ac529f690b4d714a347aa5ba81cce_small.png" class="user-info__image-pic user-info__image-pic_small" width="24" height="24">
  <span class="user-info__nickname user-info__nickname_small user-info__nickname_comment">qbertych</span>
</a>


          <time class="comment__date-time comment__date-time_published">01.08.18 в 11:08</time>
          <ul class="inline-list inline-list_comment-nav">
  <li class="inline-list__item inline-list__item_comment-nav">
    <a href="#comment_18945589" class="icon_comment-anchor" title="Ссылка на комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#anchor"></use></svg></a>
  </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#" class="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18945589" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled=""><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#book"></use></svg></a>
    </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <span class="icon_comment-branch js-comment_tree" data-id="18945589" data-parent_id="18945069" title="Показать ветку комментариев"><svg width="8" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#tree"></use></svg></span>
    </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#comment_18945069" class="icon_comment-arrow-up js-comment_parent" data-id="18945589" data-parent_id="18945069" title="Показать предыдущий комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
    </li>

  <li class="inline-list__item inline-list__item_comment-nav hidden js-comment_children">
    <a href="#comment_18945589" class="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18945589" data-parent_id="18945069" title="Вернуться к ответу"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
  </li>
</ul>

            <div class="voting-wjt voting-wjt_comments js-comment-vote" data-id="18945589" data-post-target="418819" data-type="3">
    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-up" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>

    <span class="voting-wjt__counter voting-wjt__counter_positive  js-score" title="Общий рейтинг 1: ↑1 и ↓0">+1</span>

    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-down" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>
  </div>

        </div>

        <div class="comment__message "><p>Ага. </p><br>
<p>В одном из первых экспериментов делали проще: конденсат делили на две части, а потом сталкивали их друг с другом. В том, что получилось, слои с большой плотностью атомов чередовались с почти пустыми слоями.</p><br>
<p>Нобелевскую за это, само собой, дали.</p></div>

        <div class="comment__footer">
</div>

        <div class="comment__reply-form js-form_placeholder"></div>
    </div>

    <ul class="content-list content-list_nested-comments content-list_nested-comments-1" id="reply_comments_18945589"></ul>
  </li>
</ul>
  </li>
  <li class="content-list__item content-list__item_comment js-comment " rel="18945145">

    <span class="parent_id" data-parent_id="0"></span>
    <div class="comment" id="comment_18945145">
        <span class="comment__folding-dotholder"></span>
        <div class="comment__head   " rel="18945145">
          <a href="https://habr.com/users/GeMir/" class="user-info user-info_inline" data-user-login="GeMir">
    <img src="//habrastorage.org/getpro/habr/avatars/6f4/a82/345/6f4a823452f29b558109e6da593f5d13_small.jpg" class="user-info__image-pic user-info__image-pic_small" width="24" height="24">
  <span class="user-info__nickname user-info__nickname_small user-info__nickname_comment">GeMir</span>
</a>

          <svg class="icon_comment-edit" title="Комментарий был изменен" width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#pencil"></use></svg>
          <time class="comment__date-time comment__date-time_published">01.08.18 в 09:56</time>
          <ul class="inline-list inline-list_comment-nav">
  <li class="inline-list__item inline-list__item_comment-nav">
    <a href="#comment_18945145" class="icon_comment-anchor" title="Ссылка на комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#anchor"></use></svg></a>
  </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#" class="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18945145" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled=""><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#book"></use></svg></a>
    </li>


  <li class="inline-list__item inline-list__item_comment-nav hidden js-comment_children">
    <a href="#comment_18945145" class="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18945145" data-parent_id="0" title="Вернуться к ответу"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
  </li>
</ul>

            <div class="voting-wjt voting-wjt_comments js-comment-vote" data-id="18945145" data-post-target="418819" data-type="3">
    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-up" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>

    <span class="voting-wjt__counter  voting-wjt__counter_negative js-score" title="Общий рейтинг 1: ↑0 и ↓1">–1</span>

    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-down" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>
  </div>

        </div>

        <div class="comment__message comment__message_downgrade comment__message_downgrade-1"><blockquote>установка холодных атомов […] будет генерировать ультрахолодные атомы</blockquote>Капитан О., мы вам всегда рады. <br>
<blockquote>Атомы охлаждены до одной десятимиллиардной доли градуса выше абсолютного нуля</blockquote>0,0000000001 K.<br>
<blockquote>в среднем это в десять миллиардов раз холоднее, чем в глубоком космосе</blockquote>0,0000000001 * 10.000.000.000 = 1 K.<br>
Числа обычно проще сравнивать, чем числительные.</div>

        <div class="comment__footer">
</div>

        <div class="comment__reply-form js-form_placeholder"></div>
    </div>

    <ul class="content-list content-list_nested-comments content-list_nested-comments-0" id="reply_comments_18945145">  <li class="content-list__item content-list__item_comment js-comment " rel="18945261">

    <span class="parent_id" data-parent_id="18945145"></span>
    <div class="comment" id="comment_18945261">
        <span class="comment__folding-dotholder"></span>
        <div class="comment__head   " rel="18945261">
          <a href="https://habr.com/users/balexa/" class="user-info user-info_inline" data-user-login="balexa">
    <svg class="default-image default-image_mini default-image_pink" width="24" height="24"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#slug"></use></svg>
  <span class="user-info__nickname user-info__nickname_small user-info__nickname_comment">balexa</span>
</a>


          <time class="comment__date-time comment__date-time_published">01.08.18 в 10:18</time>
          <ul class="inline-list inline-list_comment-nav">
  <li class="inline-list__item inline-list__item_comment-nav">
    <a href="#comment_18945261" class="icon_comment-anchor" title="Ссылка на комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#anchor"></use></svg></a>
  </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#" class="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18945261" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled=""><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#book"></use></svg></a>
    </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <span class="icon_comment-branch js-comment_tree" data-id="18945261" data-parent_id="18945145" title="Показать ветку комментариев"><svg width="8" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#tree"></use></svg></span>
    </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#comment_18945145" class="icon_comment-arrow-up js-comment_parent" data-id="18945261" data-parent_id="18945145" title="Показать предыдущий комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
    </li>

  <li class="inline-list__item inline-list__item_comment-nav hidden js-comment_children">
    <a href="#comment_18945261" class="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18945261" data-parent_id="18945145" title="Вернуться к ответу"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
  </li>
</ul>

            <div class="voting-wjt voting-wjt_comments js-comment-vote" data-id="18945261" data-post-target="418819" data-type="3">
    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-up" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>

    <span class="voting-wjt__counter voting-wjt__counter_positive  js-score" title="Общий рейтинг 3: ↑3 и ↓0">+3</span>

    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-down" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>
  </div>

        </div>

        <div class="comment__message "><blockquote>0,0000000001</blockquote><br>
1e-10 <br>
:)</div>

        <div class="comment__footer">
</div>

        <div class="comment__reply-form js-form_placeholder"></div>
    </div>

    <ul class="content-list content-list_nested-comments content-list_nested-comments-1" id="reply_comments_18945261">  <li class="content-list__item content-list__item_comment js-comment " rel="18946109">

    <span class="parent_id" data-parent_id="18945261"></span>
    <div class="comment" id="comment_18946109">
        <span class="comment__folding-dotholder"></span>
        <div class="comment__head   " rel="18946109">
          <a href="https://habr.com/users/GeMir/" class="user-info user-info_inline" data-user-login="GeMir">
    <img src="//habrastorage.org/getpro/habr/avatars/6f4/a82/345/6f4a823452f29b558109e6da593f5d13_small.jpg" class="user-info__image-pic user-info__image-pic_small" width="24" height="24">
  <span class="user-info__nickname user-info__nickname_small user-info__nickname_comment">GeMir</span>
</a>

          <svg class="icon_comment-edit" title="Комментарий был изменен" width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#pencil"></use></svg>
          <time class="comment__date-time comment__date-time_published">01.08.18 в 12:39</time>
          <ul class="inline-list inline-list_comment-nav">
  <li class="inline-list__item inline-list__item_comment-nav">
    <a href="#comment_18946109" class="icon_comment-anchor" title="Ссылка на комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#anchor"></use></svg></a>
  </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#" class="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18946109" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled=""><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#book"></use></svg></a>
    </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <span class="icon_comment-branch js-comment_tree" data-id="18946109" data-parent_id="18945261" title="Показать ветку комментариев"><svg width="8" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#tree"></use></svg></span>
    </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#comment_18945261" class="icon_comment-arrow-up js-comment_parent" data-id="18946109" data-parent_id="18945261" title="Показать предыдущий комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
    </li>

  <li class="inline-list__item inline-list__item_comment-nav hidden js-comment_children">
    <a href="#comment_18946109" class="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18946109" data-parent_id="18945261" title="Вернуться к ответу"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
  </li>
</ul>

            <div class="voting-wjt voting-wjt_comments js-comment-vote" data-id="18946109" data-post-target="418819" data-type="3">
    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-up" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>

    <span class="voting-wjt__counter voting-wjt__counter_positive  js-score" title="Общий рейтинг 1: ↑1 и ↓0">+1</span>

    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-down" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>
  </div>

        </div>

        <div class="comment__message "><blockquote>1e-10</blockquote>Ну или 100 пК, если уж в СИ :)</div>

        <div class="comment__footer">
</div>

        <div class="comment__reply-form js-form_placeholder"></div>
    </div>

    <ul class="content-list content-list_nested-comments content-list_nested-comments-2" id="reply_comments_18946109"></ul>
  </li>
</ul>
  </li>
</ul>
  </li>
  <li class="content-list__item content-list__item_comment js-comment " rel="18945885">

    <span class="parent_id" data-parent_id="0"></span>
    <div class="comment" id="comment_18945885">
        <span class="comment__folding-dotholder"></span>
        <div class="comment__head   " rel="18945885">
          <a href="https://habr.com/users/Dmitry88/" class="user-info user-info_inline" data-user-login="Dmitry88">
    <svg class="default-image default-image_mini default-image_blue" width="24" height="24"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#slug"></use></svg>
  <span class="user-info__nickname user-info__nickname_small user-info__nickname_comment">Dmitry88</span>
</a>


          <time class="comment__date-time comment__date-time_published">01.08.18 в 12:00</time>
          <ul class="inline-list inline-list_comment-nav">
  <li class="inline-list__item inline-list__item_comment-nav">
    <a href="#comment_18945885" class="icon_comment-anchor" title="Ссылка на комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#anchor"></use></svg></a>
  </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#" class="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18945885" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled=""><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#book"></use></svg></a>
    </li>


  <li class="inline-list__item inline-list__item_comment-nav hidden js-comment_children">
    <a href="#comment_18945885" class="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18945885" data-parent_id="0" title="Вернуться к ответу"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
  </li>
</ul>

            <div class="voting-wjt voting-wjt_comments js-comment-vote" data-id="18945885" data-post-target="418819" data-type="3">
    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-up" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>

    <span class="voting-wjt__counter   js-score" title="Общий рейтинг 0: ↑0 и ↓0">0</span>

    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-down" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>
  </div>

        </div>

        <div class="comment__message ">Я таки не понял, бозоны становятся волной или остаются бозонами(масса остается), но обезличенными. Этакий суператом</div>

        <div class="comment__footer">
</div>

        <div class="comment__reply-form js-form_placeholder"></div>
    </div>

    <ul class="content-list content-list_nested-comments content-list_nested-comments-0" id="reply_comments_18945885"></ul>
  </li>
  <li class="content-list__item content-list__item_comment js-comment " rel="18947081">

    <span class="parent_id" data-parent_id="0"></span>
    <div class="comment" id="comment_18947081">
        <span class="comment__folding-dotholder"></span>
        <div class="comment__head   " rel="18947081">
          <a href="https://habr.com/users/ForestLabs/" class="user-info user-info_inline" data-user-login="ForestLabs">
    <svg class="default-image default-image_mini default-image_pink" width="24" height="24"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#slug"></use></svg>
  <span class="user-info__nickname user-info__nickname_small user-info__nickname_comment">ForestLabs</span>
</a>


          <time class="comment__date-time comment__date-time_published">01.08.18 в 16:36</time>
          <ul class="inline-list inline-list_comment-nav">
  <li class="inline-list__item inline-list__item_comment-nav">
    <a href="#comment_18947081" class="icon_comment-anchor" title="Ссылка на комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#anchor"></use></svg></a>
  </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#" class="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18947081" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled=""><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#book"></use></svg></a>
    </li>


  <li class="inline-list__item inline-list__item_comment-nav hidden js-comment_children">
    <a href="#comment_18947081" class="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18947081" data-parent_id="0" title="Вернуться к ответу"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
  </li>
</ul>

            <div class="voting-wjt voting-wjt_comments js-comment-vote" data-id="18947081" data-post-target="418819" data-type="3">
    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-up" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>

    <span class="voting-wjt__counter  voting-wjt__counter_negative js-score" title="Общий рейтинг 1: ↑0 и ↓1">–1</span>

    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-down" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>
  </div>

        </div>

        <div class="comment__message comment__message_downgrade comment__message_downgrade-1"><p>Стругацкие — провидцы. </p><br>
<pre><code> Попугай вздрогнул и чуть не свалился с весов. Помахав крыльями, чтобы</code></pre><br>
<p>восстановить равновесие, он отозвался:</p><br>
<ul>
<li>Р-резерв! Кр-ратер Ричи!<br>
Мы переглянулись.</li>
<li>Р-резерв! — гаркнул Витька.</li>
<li>Огр-ромен! Гр-руды! Гр-руды! Р-ричи пр-рав! Р-ричи пр-рав!<br>
Р-роботы! Р-роботы!</li>
<li>Роботы!</li>
<li>Кр-рах! Гор-рят! Атмосфер-ра гор-рит! Пр-рочь! Др-рамба, пр-рочь!</li>
<li>Драмба!</li>
<li>Р-рубидий! Р-резерв!</li>
<li>Рубидий!</li>
</ul></div>

        <div class="comment__footer">
</div>

        <div class="comment__reply-form js-form_placeholder"></div>
    </div>

    <ul class="content-list content-list_nested-comments content-list_nested-comments-0" id="reply_comments_18947081"></ul>
  </li>
  <li class="content-list__item content-list__item_comment js-comment " rel="18947485">

    <span class="parent_id" data-parent_id="0"></span>
    <div class="comment" id="comment_18947485">
        <span class="comment__folding-dotholder"></span>
        <div class="comment__head   " rel="18947485">
          <a href="https://habr.com/users/da-nie/" class="user-info user-info_inline" data-user-login="da-nie">
    <img src="//habrastorage.org/getpro/habr/avatars/609/4f1/e7e/6094f1e7e908482554b2f4db37324628_small.jpg" class="user-info__image-pic user-info__image-pic_small" width="24" height="24">
  <span class="user-info__nickname user-info__nickname_small user-info__nickname_comment">da-nie</span>
</a>

          <svg class="icon_comment-edit" title="Комментарий был изменен" width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#pencil"></use></svg>
          <time class="comment__date-time comment__date-time_published">01.08.18 в 17:58</time>
          <ul class="inline-list inline-list_comment-nav">
  <li class="inline-list__item inline-list__item_comment-nav">
    <a href="#comment_18947485" class="icon_comment-anchor" title="Ссылка на комментарий"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#anchor"></use></svg></a>
  </li>

    <li class="inline-list__item inline-list__item_comment-nav">
      <a href="#" class="icon_comment-bookmark " onclick="return comments_add_to_favorite(this)" data-type="3" data-id="18947485" data-action="add" title="Только зарегистрированные пользователи могут добавлять публикации в избранное" disabled=""><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#book"></use></svg></a>
    </li>


  <li class="inline-list__item inline-list__item_comment-nav hidden js-comment_children">
    <a href="#comment_18947485" class="icon_comment-arrow-down js-comment_parent back_to_children" data-id="18947485" data-parent_id="0" title="Вернуться к ответу"><svg width="12" height="12"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#rounded-arrow"></use></svg></a>
  </li>
</ul>

            <div class="voting-wjt voting-wjt_comments js-comment-vote" data-id="18947485" data-post-target="418819" data-type="3">
    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="plus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-up" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>

    <span class="voting-wjt__counter   js-score" title="Общий рейтинг 0: ↑0 и ↓0">0</span>

    <button type="button" class="btn voting-wjt__button voting-wjt__button_small " data-action="minus" onclick="comment_vote(this);" title="Голосовать могут только зарегистрированные пользователи" disabled=""><svg class="icon-svg_arrow-down" width="10" height="16"><use xlink:href="https://habr.com/images/1532702400/common-svg-sprite.svg#vote-arrow"></use></svg></button>
  </div>

        </div>

        <div class="comment__message "><blockquote>бсолютного нуля, точки, при достижении которой — теоретически — в любом веществе прекращается тепловое движение частиц. </blockquote><br>
<br>
А как же соотношение неопределённости? ;)</div>

        <div class="comment__footer">
</div>

        <div class="comment__reply-form js-form_placeholder"></div>
    </div>

    <ul class="content-list content-list_nested-comments content-list_nested-comments-0" id="reply_comments_18947485"></ul>
  </li>


    </ul>