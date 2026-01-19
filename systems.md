---
layout: page
title: Personal OS
permalink: /systems/
---

My personal operating system for life - productivity frameworks, tips, and tools I've created to manage everything better.

{% assign categories = site.systems | where_exp: "item", "item.parent == nil" | map: "category" | uniq | compact | sort %}

{% for category in categories %}
  <h2 class="section-heading">{{ category | capitalize }}</h2>
  
  <div class="card-grid">
    {% assign category_systems = site.systems | where: "category", category | where_exp: "item", "item.parent == nil" %}
    {% for lifehack in category_systems %}
      <div class="card">
        <a href="{{ lifehack.url | relative_url }}" class="card-link">
          <p class="card-type">{{ lifehack.category | upcase }}</p>
          <h2 class="card-title">{{ lifehack.title }}</h2>
          <p class="card-excerpt">{{ lifehack.description | strip_html | truncate: 150 }}</p>
        </a>
      </div>
    {% endfor %}
  </div>
{% endfor %}
