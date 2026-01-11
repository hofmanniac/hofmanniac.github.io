---
layout: page
title: Projects
permalink: /projects/
---

{% assign project_types = site.projects | map: "type" | uniq | compact | sort %}

{% for type in project_types %}
  {% comment %} Get plural name from data file or default to adding 's' {% endcomment %}
  {% if site.data.project_types[type] %}
    {% assign type_heading = site.data.project_types[type].plural %}
  {% else %}
    {% assign type_heading = type | capitalize | append: "s" %}
  {% endif %}
  
  <h2 class="section-heading project-type-heading">{{ type_heading }}</h2>
  <div class="card-grid">
    {% assign typed_projects = site.projects | where: "type", type %}
    {% for project in typed_projects %}
      <div class="card">
        <a href="{{ project.url | relative_url }}" class="card-link">
          <p class="card-type">{{ project.type | upcase }}</p>
          <h2 class="card-title">{{ project.title }}</h2>
          <p class="card-excerpt">{{ project.excerpt | strip_html | truncate: 150 }}</p>
        </a>
      </div>
    {% endfor %}
  </div>
{% endfor %}
