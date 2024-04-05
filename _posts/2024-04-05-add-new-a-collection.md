---
layout: post
title:  "Add new a collection"
---

# Add new a collection
I consider a collection as a content data type. For example, pages and posts are different content data type.

## Create custom collection
Add your custom collection(e.g. topics) in `_config.yml`.

```yml
collections:
    topics:
        output: true
```

## Add collection data(_topics/*.md)

1. Create `_topics/` directory at the same level as `_posts/`.
1. Create `_topics/fruits.md`.
    ```md
    ---
    title: Berries
    ---
    This a berry.
    ```

## List all topics on a page
1. Add `topics.md` at the root level.
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

## Set custom layout for your collection
Duplicate `_layouts/post.html` and save it `_layouts/topic.html`.
Modify it to your likings.

*Note*: Don't forget to specify the layout in your md files.
e.g. In `_topics/fruits.md`, add layout.

```md
---
layout: topic
title: Berries
---
This page will render using topic.html layout.
```