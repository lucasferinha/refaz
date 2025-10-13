---
pagination:
  data: collections
  size: 1
  alias: tag
  filter:
    - header
    - posts
permalink: /tags/{{ tag }}/
layout: layout.html
eleventyComputed:
  title: Tagged {{ tag }}
---

{% assign tags__lista = collections[ tag ] | forceReverse %}

{% for post in tags__lista %}
<article class="texto-conteudo--pagina">
    <header class="tagged">
        <h2><a href="{{ post.url  }}">{{ post.data.title }}</a></h2>
        <time>{{ post.date | dateFormat }}</time>
    </header>
{{ post.content }}
</article>
{% endfor %}