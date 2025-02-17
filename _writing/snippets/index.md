---
title: "Writing Snippets & Ideas"
layout: page
permalink: /writing/snippets/
---

{% assign snippets = site.writing | where: "type", "Snippet" %}
{% for entry in snippets %}
- **[{{ entry.title }}]({{ entry.url }})**
{% endfor %}
