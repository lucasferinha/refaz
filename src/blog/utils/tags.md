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
  title: Categoria - {{ tag }}
---

{% css %}
{{ '/assets/styles/base/_reset.css' | read }}
{{ '/assets/styles/base/_variables.css' | read }}
{{ '/assets/styles/base/_typography.css' | read }}

{{ '/assets/styles/layout/_spacing.css' | read }}
{{ '/assets/styles/layout/_header.css' | read }}
{{ '/assets/styles/layout/_main.css' | read }}
{{ '/assets/styles/layout/_footer.css' | read }}

{{ '/assets/styles/components/_buttons.css' | read }}

{{ '/assets/styles/pages/_tags.css' | read }}
{{ '/assets/styles/base/_utilities.css' | read }}
{% endcss %}

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