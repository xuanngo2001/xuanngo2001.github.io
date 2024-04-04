---
layout: page
title: Topics
---

{% for tag in site.tags %}
  <h3>{{ tag[0] }}</h3>
  <h4>Xuan1</h4>
  <ul>
    {% for topics in tag[1] %}
      <li><a href="{{ topics.url }}">{{ topics.date | date: "%B %Y" }} - {{ topics.title }}</a></li>
    {% endfor %}
  </ul>
{% endfor %}