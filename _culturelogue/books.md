---
title: "Books"
layout: page
permalink: /culturelogue/books/
type: Books
description: Books, both paper-based or audiobooks, I've read or listenened to or are in the queue.
---

## Recent

- [The Good Gut: Taking Control of Your Weight, Your Mood, and Your Long Term Health](https://www.barnesandnoble.com/w/the-good-gut-justin-sonnenburg/1120625403){:target="_blank"}
- Metabolical: The Lure and the Lies of Processed Food, Nutrition, and Modern Medicine
- Good Energy: The Suprising Connection Between Metabolism and Limitless Health
- Outlive: The Science and Art of Longevity

## Early Years

- The Seven Habits of Highly Effective People
- How to Win Friends and Influence People
  
{% for item in site.culturelogue %}
{% if item.permalink contains "/culturelogue/books/" and item.url != page.url %}
- **[{{ item.title }}]({{ item.url }})**
{% endif %}
{% endfor %}
