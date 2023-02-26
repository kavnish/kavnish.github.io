---
layout: default
title: Blog
published: false
---
<p>Here are my blog posts in reverse chronological order:</p>

<ul>
  {% for post in site.posts %}
    <li class="spaced">
      <img src="{{ post.thumbnail-img }}"  width="25" height="25">
      <a href="{{ post.url }}">{{ post.title }}</a>  {{ post.date | date_to_long_string }}
    </li>
  {% endfor %}
</ul>