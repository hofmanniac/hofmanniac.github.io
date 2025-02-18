---
title: Writing
permalink: /writing/
layout: page
---

Stuff I've written. Some snippets, some fully complete stuff. Fiction, non-fiction, essays. I'm certainly not a writer but I fancy someday maybe I would be when I grow up.

## 📖 Categories

<!-- - ✨ **[Fiction](/writing/fiction/)** – Short stories, novels, and creative narratives.
- 📝 **[Essays](/writing/essays/)** – Thoughts on various topics, structured articles, and opinion pieces. -->
- 💡 **[Snippets & Ideas](/writing/snippets/)** – Quick writing ideas, story starters, and creative fragments.
<!-- - ✅ **[Completed Works](/writing/completed/)** – Fully developed and polished writings. -->

---

## 📜 Latest Writings

{% for item in site.writing %}
{% unless item.path contains "index.md" %}
- **[{{ item.title }}]({{ item.url }})** ({{ item.type }})
{% endunless %}
{% endfor %}

