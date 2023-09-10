---
layout: default
title: Blog
show-avatar: false
---

<ul style="list-style: none;">
  <h3 style="margin-bottom: 20px;">Blog Posts</h3>
  {% for post in site.posts %}
    <li class="spaced" style="margin-bottom: 10px;">
      {{ post.date | date: "%Y-%m-%d" }}  <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>
