---
layout: default
title: Blog
---
<h4>Here are my blog posts</h4>

<ul>
  {% for post in site.posts %}
    <li class="spaced">
      <a href="{{ post.url }}">{{ post.title }}</a>  {{ post.date | date_to_long_string }}
    </li>
  {% endfor %}
</ul>