---
layout: page
# the default layout is 'page'
icon: fas fa-info-circle
order: 5
---
This is another test.

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
      <p>{{ post.excerpt }}</p>
    </li>
  {% endfor %}
</ul>
