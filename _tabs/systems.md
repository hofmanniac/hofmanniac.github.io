---
icon: fa-solid fa-heart
order: 3
title: Life Systems
permalink: /systems/
---

<!-- {% for system in site.systems %}
  - [{{ system.title }}]({{ system.url }}): {{ system.description }}
{% endfor %} -->

{% for system in site.systems %}
  {% if system.showcase %}
## {{ system.title }}
{{ system.description}}

[{{ system.showcaseNavText }}]({{ system.url }})
<!-- <input type="button" value="{{ system.showcaseNavText }}" style="min-width:150px; float: right;" onclick="location.href='{{ system.url }}'" /> -->
  {% endif %}
{% endfor %}

<!-- <div id="post-list" class="flex-grow-1 px-xl-1"> -->

<!-- {% for system in site.systems %}
  
  {% if system.showcase %}

    <article class="card-wrapper card">
      <a href="{{ system.url }}" class="post-preview row g-0 flex-md-row-reverse">
        <div class="col-md-12">
          <div class="card-body d-flex flex-column">
            <h1 class="card-title my-2 mt-md-0">{{ system.title }}</h1>
            <div class="card-text content mt-0 mb-3">
              <p>{{ system.description }}
              </p>
            </div>
            <div class="post-meta flex-grow-1 d-flex align-items-end">
              <div class="me-auto">
                <i class="far fa-folder-open fa-fw me-1"></i>
                <span class="categories"> {{ system.tags }}</span>
              </div>
            </div>
          </div>
        </div>
      </a>
    </article>
  {% endif %}

{% endfor %} -->

<!-- </div> -->
