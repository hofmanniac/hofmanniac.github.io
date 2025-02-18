---
icon: fa-solid fa-lightbulb
order: 2
title: Projects
permalink: /projects/
---

{% for project in site.projects %}
  - [{{ project.title }}]({{ project.url }}): {{ project.description }}
{% endfor %}

## Writing

Stuff I've written. Some snippets, some fully complete stuff. Fiction, non-fiction, essays. I'm certainly not a writer but I fancy someday maybe I would be when I grow up.

[I can't wait! Show me more!](/writing/)
