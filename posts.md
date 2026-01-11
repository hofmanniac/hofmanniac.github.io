---
layout: page
title: Posts
permalink: /posts/
---

<div class="card-grid">
  {% for post in site.posts %}
    <div class="card">
      <a href="{{ post.url | relative_url }}" class="card-link">
        <p class="card-date">{{ post.date | date: "%B %d, %Y" }}</p>
        <h2 class="card-title">{{ post.title | escape }}</h2>
        <p class="card-excerpt">
          {%- if post.excerpt -%}
            {{ post.excerpt | strip_html | truncate: 150 }}
          {%- else -%}
            {{ post.content | strip_html | truncate: 150 }}
          {%- endif -%}
        </p>
      </a>
    </div>
  {% endfor %}
</div>
