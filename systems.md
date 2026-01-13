---
layout: page
title: Personal OS
permalink: /systems/
---

My personal operating system for life - productivity frameworks, tips, and tools I've created to manage everything better.

## Productivity

<div class="card-grid">
  {% for lifehack in site.systems %}
    {% if lifehack.category == "productivity" and lifehack.parent == nil %}
      <div class="card">
        <a href="{{ lifehack.url | relative_url }}" class="card-link">
          <p class="card-type">PRODUCTIVITY</p>
          <h2 class="card-title">{{ lifehack.title }}</h2>
          <p class="card-excerpt">{{ lifehack.description | strip_html | truncate: 150 }}</p>
        </a>
      </div>
    {% endif %}
  {% endfor %}
</div>
