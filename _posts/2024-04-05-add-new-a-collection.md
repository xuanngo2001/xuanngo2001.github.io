---
layout: post
title:  "Add new a collection"
---

# Add new a collection
I consider a collection as a content data type. For example, pages and posts are different content data type.
To add your own custom collection(e.g. topics), do the followings:
1. Add the following in `_config.yml`:
    ```yml
    collections:
        topics:
            output: true
    ```
1. Create `_topics/` directory at the same level as `_posts/`.
1. Create `_topics/fruits.md`.
    ```md
    ---
    title: Berries
    ---
    This a berry.
    ```
1. List all topics on a page. Add `topics.md` at the root level.
    ```md
    ---
    layout: page
    title: Topics 03
    ---

    {% for topic in site.topics %}
    <h2>
        <a href="{{ topic.url }}">{{ topic.url }}</a>
    </h2>
    {% endfor %}
    ```