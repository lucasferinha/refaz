# Instituto Refaz

[![Eleventy](https://img.shields.io/badge/v3.1.2-000000?style=flat&logo=eleventy&logoColor=white&label=Eleventy&labelColor=000000&color=%23ffffff)](https://www.11ty.dev/) 
[![Node.js](https://img.shields.io/badge/v22.18.0-000000?style=flat&logo=node.js&logoColor=white&label=Node.js&labelColor=069c0e&color=%23ffffff)](https://nodejs.org/) 
[![License: MIT](https://badgen.net/#static/license/MIT/orange)](https://opensource.org/licenses/MIT) 

Site institucional do **Instituto Refaz**, uma organização não governamental que transforma vidas por meio do esporte e da educação no Rio de Janeiro.

## Como usar

### Pré-requisitos
- Node.js 18 ou superior
- npm

### Desenvolvimento
```bash
# Clone o repositório
git clone https://github.com/institutorefaz/instituto-refaz.git
cd instituto-refaz

# Instale as dependências
npm install

# Execute em modo desenvolvimento
npm run dev
```
Acesse: [http://localhost:1234](http://localhost:1234)

### Build para produção
```bash
npm run build
```

## Estrutura

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
│   │       └── pages/           # Estilos específicos por página
│   ├── blog/
│   │   └── posts/               # Postagens em Markdown
│   └── paginas/                 # Páginas do site 
│
├── eleventy.config.js           # Configuração principal do Eleventy
├── pages.yml                    # Configuração do Pages CMS
└── _site/                       # Build de produção gerado automaticamente
```

## Gerenciamento de conteúdo

O conteúdo é gerenciado através do **Pages CMS**. Para criar novos posts, acesse o painel administrativo.

## Deploy

O site é automaticamente publicado via **Netlify** quando há alterações na branch `main`.

---

**Desenvolvedor:** Ferinha  
Desenvolvido com 🤞🏻 para transformar vidas