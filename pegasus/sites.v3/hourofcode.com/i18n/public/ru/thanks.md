---
title: <%= hoc_s(:title_signup_thanks) %>
layout: wide
nav: how_to_nav

social:
  "og:title": "<%= hoc_s(:meta_tag_og_title) %>"
  "og:description": "<%= hoc_s(:meta_tag_og_description) %>"
  "og:image": "http://<%=request.host%>/images/hourofcode-2015-video-thumbnail.png"
  "og:image:width": 1440
  "og:image:height": 900
  "og:url": "http://<%=request.host%>"

  "twitter:card": player
  "twitter:site": "@codeorg"
  "twitter:url": "http://<%=request.host%>"
  "twitter:title": "<%= hoc_s(:meta_tag_twitter_title) %>"
  "twitter:description": "<%= hoc_s(:meta_tag_twitter_description) %>"
  "twitter:image:src": "http://<%=request.host%>/images/hourofcode-2015-video-thumbnail.png"
---
<%
    facebook = {:u=>"http://#{request.host}/us"}

    twitter = {:url=>"http://hourofcode.com", :related=>'codeorg', :hashtags=>'', :text=>hoc_s(:twitter_default_text)}
    twitter[:hashtags] = 'HourOfCode' unless hoc_s(:twitter_default_text).include? '#HourOfCode'
%>

# Спасибо за регистрацию на проведение Часа Кода!

В качестве благодарности за то, что у студентов появилась возможность начать изучать информатику, мы бы хотели подарить вам бесплатный набор профессионально напечатанных постеров, демонстрирующих различные ролевые модели для вашей аудитории. Используйте промо-код **FREEPOSTERS** при оформлении заказа. (Примечание: вам нужно будет оплатить стоимость доставки. Поскольку эти постеры доставляются из США, стоимость доставки может быть достаточно высокой для Канады и других стран. Мы понимаем, что это может не укладываться в ваш бюджет и, в таком случае, мы рекомендуем распечатать для вашей аудитории [PDF файлы](https://code.org/inspire) самостоятельно.)  
<br /> [<button>Скачать постеры</button>](https://store.code.org/products/code-org-posters-set-of-12) Используйте промо-код FREEPOSTERS

<% if @country == 'us' %> Спасибо великодушию компаниям Ozobot, Dexter Industries, littleBits и Wonder Workshop, а также более сотни классов будут выбраны чтобы получить роботы или схемыдля их классов! Чтобы иметь право на получение комплекта, убедитесь что вы выполнили опрос отправленным от Code.org после Часа Кода. Code.org выберет победивших классов. А пока, просмотрите несколько наших робототехнических и схематических заданий. Пожалуйста обратите внимание что эта функция доступна только для школ на территории Соединённых Штатов. <% end %>

<br /> **Час Кода идёт во время <%= campaign_date('full') %> и мы будем на связи про наши новые обучения и других захватывающих обновлениях которые скоро выйдут. А пока, Что мы можем сделать сейчас?**

## Расскажите об этом мероприятии своей школе и окружению

Вы только что присоединились к движению Часа Кода. Расскажите вашим друзьям вместе с **#HourOfCode**!

<%= view :share_buttons, facebook:facebook, twitter:twitter %> <br /> Поощряйте других чтобы они участвовали [вместе с нашим образцом письма.](<%= resolve_url('/promote/resources#sample-emails') %>) Свяжитесь с вашим директором и дайте вызов каждому классу зарегистрироваться. Наймите местную группу - мальчиков или девочек из скаутов, университетов, группу ветеранов, профсоюзников или даже некоторых друзей. И совсем не обязательно быть школьником или студентом, чтобы получить новые знания. Пригласите местного политика или разработчика правил чтобы он или она посетили вашу школу для Часа Кода. Это может помочь создать поддержку компьютерных наук в вашем районе, меньше чем за час.

Используйте эти [плакаты, баннеры, наклейки, видео и многое другое](<%= resolve_url('/promote/resources') %>) для вашего мероприятия.

## 2. Найти местных волонтеров (добровольцев), которые помогут вам с организацией Вашего мероприятия.

[Search our volunteer map](<%= codeorg_url('/volunteer/local') %>) for volunteers who can visit your classroom or video chat remotely to inspire your students about the breadth of possibilities with computer science.

## Запланируйте ваш Час Кода

Выберете [занятие Часа Кода](https://hourofcode.com/learn) для вашего класса и просмотрите это руководство</а>.</p> 

# Иди за грань Часа Кода

<% if @country == 'us' %> Час Кода это только начало. Если даже вы администратор, учитель, или адвокат, мы имеем [ профессиональное развитее, программа, и ресурсы, чтобы помочь вам принести ваш научно-компьютерный класс в вашу школу или расширить ваши предложения.](https://code.org/yourschool) Если вы уже учите компьютерной науке, используйте эти ресурсы во время Недели Образования Компьютерной Науке чтобы собрать поддержку от администратора, родителей, и местности.

У вас есть много вариантов чтобы соответствовать вашей школе. Большинство организации предлагают обучения Часа Кода, а также программа и профессиональное развитее доступны. Если вы найдёте урок который вам нравиться, попросите о том чтобы идти дальше. Чтобы помочь вам начать, мы выделили номер [программы провайдера который поможет вам или вашим студентам идти дальше часа.](https://hourofcode.com/beyond)

<% else %> Час Кода это только начало. Большинство организаций предлагает уроки Часа Кода, а также имеем программы доступны чтобы идти дальше. Чтобы помочь вам начать, мы выделили номер [программы провайдера который поможет вам или вашим студентам идти дальше часа.](https://hourofcode.com/beyond)

Code.org также предлагает полный [вводный Компьютерно-Научные курсы](https://code.org/educate/curriculum/cs-fundamentals-international) которые переведены на более 25 языков абсолютно бесплатно для вас и вашей школы. <% end %>

<%= view 'popup_window.js' %>