---
icon: fa-solid fa-book
order: 4
title: Culturelogue
permalink: /culturelogue/
---

A record of books, movies, TV shows, and podcasts I've explored or want to explore.

{% for item in site.culturelogue %}
## {{ item.title }}
{{ item.description}}

[{{ item.navtext }}]({{ item.url }})
{% endfor %}

<!-- 

- 📚 [Books](/culturelogue/books/): {{ site.culturelogue | where: "permalink", "/culturelogue/books/" | map: "description" | first }}
- 
- 🎬 [Movies](/culturelogue/movies/): {{ site.culturelogue | where: "permalink", "/culturelogue/movies/" | map: "description" | first }}

- 📺 [TV Shows](/culturelogue/shows/): {{ site.culturelogue | where: "permalink", "/culturelogue/shows/" | map: "description" | first }}

- 🎙 [Podcasts](/culturelogue/podcasts/): {{ site.culturelogue | where: "permalink", "/culturelogue/podcasts/" | map: "description" | first }} -->
