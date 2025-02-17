---
icon: fa-solid fa-lightbulb
order: 3
title: Life Systems
permalink: /systems/
---

{% for system in site.systems %}
  - [{{ system.title }}]({{ system.url }}): {{ system.description }}
{% endfor %}
