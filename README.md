# Instituto Refaz - Site Institucional

[![Eleventy](https://img.shields.io/badge/Eleventy-3.1.0--beta.1-000000?style=flat&logo=11ty)](https://www.11ty.dev/)
[![Node.js](https://img.shields.io/badge/Node.js-18+-339933?style=flat&logo=nodedotjs)](https://nodejs.org/)
[![Netlify Status](https://api.netlify.com/api/v1/badges/xxxx/deploy-status)](https://app.netlify.com/sites/instituto-refaz/deploys)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat)](https://opensource.org/licenses/MIT)

Site institucional do **Instituto Refaz**, uma organização não governamental que transforma vidas por meio do esporte e da educação no Rio de Janeiro.

---

## Funcionalidades

- **Blog dinâmico** com sistema de posts e categorização por tags  
- **Design moderno e totalmente responsivo**  
- **Galeria de imagens** com slider interativo  
- **Otimização avançada de imagens** (WebP, lazy loading)  
- **Feed RSS/Atom** para distribuição de conteúdo  
- **Sistema de newsletter** integrado  
- **Páginas de transparência** e prestação de contas  
- **Menu mobile** responsivo  

---

## Começando

### Pré-requisitos

- Node.js 18 ou superior  
- npm

### Instalação

1. **Clone o repositório**
   ```bash
   git clone https://github.com/seu-usuario/instituto-refaz.git
   cd instituto-refaz
  ```

2. **Instale as dependências**
   ```bash
   npm install
  ```

3. **Configure o ambiente**

   ```bash
   # Edite o arquivo src/_data/config.json com as informações do site
   ```

4. **Execute em modo de desenvolvimento**

   ```bash
   npm run dev
   ```

   O site estará disponível em [http://localhost:1234](http://localhost:1234)

---

## Estrutura do Projeto

```
instituto-refaz/
├── src/
│   ├── _data/                   # Dados globais (config.json)
│   ├── _includes/               # Templates, layouts e componentes do Eleventy
│   ├── assets/                  # Arquivos estáticos
│   │   ├── fonts/               # Fontes personalizadas
│   │   ├── images/              # Imagens otimizadas do site
│   │   ├── media/               # Mídias diversas (vídeos, PDFs, etc.)
│   │   └── styles/              # Estilos CSS modularizados
│   │       ├── base/            # Reset, variáveis e estilos globais
│   │       ├── components/      # Botões, cards, sliders e elementos reutilizáveis
│   │       ├── layout/          # Cabeçalhos, rodapés e grids
│   │       ├── pages/           # Estilos específicos por página
│   │       └── rss.xml          # Estilo do feed RSS
│   ├── blog/
│   │   └── posts/               # Postagens em Markdown
│   ├── como-ajudar/             # Página "Como Ajudar"
│   ├── contato/                 # Página "Contato"
│   ├── nossos-projetos/         # Página "Nossos Projetos"
│   ├── parceiros/               # Página "Parceiros"
│   ├── politica-e-privacidade/  # Política de Privacidade
│   ├── quem-somos/              # Página "Quem Somos"
│   ├── transparencia/           # Página "Transparência"
│   ├── index.html               # Página inicial
│   ├── postcss.config.js        # Configuração do PostCSS
│   ├── robots.txt               # Regras para rastreadores e SEO
│   └── sitemap.xml.liquid       # Template do sitemap automático
│
├── eleventy.config.js           # Configuração principal do Eleventy
├── pages.yml                    # Configuração do Pages CMS
└── _site/                       # Build de produção gerado automaticamente
```

---

## Comandos Úteis

```bash
npm run dev      # Desenvolvimento com hot reload
npm run build    # Build para produção
```

---

## CMS Integrado

O projeto utiliza [Pages CMS](https://pagescms.org/) para gerenciamento de conteúdo.
Entre no site oficial, faça login e comece a criar posts, editar páginas e gerenciar imagens de maneira prática e visual.

---

## Gerenciamento de Conteúdo

### Criar um Novo Post

Para criar um novo post, adicione um arquivo em `src/blog/posts/` com o seguinte modelo:

```yaml
---
title: "Título do Post"
siteDescription: "Descrição para SEO"
date: YYYY-MM-DD
tags:
  - educação
  - esporte
  - sustentabilidade
---
```

O conteúdo do post deve ser escrito em **Markdown** abaixo do front matter.

---

## Personalização

* **Cores e estilos** → `src/assets/styles/base/_variables.css`
* **Conteúdo das páginas** → `src/pages/`
* **Configurações globais** → `src/_data/config.json`

---

## 🌐 Deploy

O site é automaticamente publicado via [Netlify](https://www.netlify.com/).
Qualquer alteração na branch `main` gera uma nova build em produção.

**Desenvolvedor:** Ferinha — [@lucax.ui](https://www.instagram.com/lucax.ui/)

> Desenvolvido com ♥ para transformar vidas por meio da educação e do esporte.


