---
layout: default
title: Blog
---
<p>Here are my rest of the blog posts in reverse chronological order:</p>

<ul>
  {% for post in site.posts %}
    <li class="spaced">
      <img src="{{ post.thumbnail-img }}"  width="50" height="50">
      <a href="{{ post.url }}">{{ post.title }}</a> {{ post.date | date_to_long_string }}
    </li>
  {% endfor %}
</ul>