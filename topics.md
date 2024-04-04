---
layout: page
title: Topics2
---

{% for tag in site.tags %}
  <h3>{{ tag[0] }}</h3>
  <h4>Xuan5 - topic</h4>
  <ul>
    {% for topic in site.topics %}
      <li><a href="{{ topic.url }}">{{ topic.date | date: "%B %Y" }} - {{ topic.title }}</a></li>
    {% endfor %}
  </ul>
{% endfor %}