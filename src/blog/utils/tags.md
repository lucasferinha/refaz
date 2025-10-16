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
css: "tags.css"
eleventyComputed:
  title: <strong>{{ tag }}</strong>
---

{% assign tags__lista = collections[ tag ] | forceReverse %}

{% for post in tags__lista %}
<article class="texto-conteudo--pagina">
    <header class="tagged">
        <h2 class="tagged__titulo"><a href="{{ post.url  }}">{{ post.data.title }}</a></h2>
        <time class="tagged__dia">{{ post.date | dateFormat }}</time>
    </header>
    <p class="tagged__texto">{{ post.data.siteDescription }}</p>
    <span class="tagged__item">{{ tag }}</span>
</article>
{% endfor %}