# Instituto Refaz - Site Institucional

[![Eleventy](https://img.shields.io/badge/Eleventy-3.1.0--beta.1-000000?style=flat&logo=11ty)](https://www.11ty.dev/)
[![Node.js](https://img.shields.io/badge/Node.js-18+-339933?style=flat&logo=nodedotjs)](https://nodejs.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat)](https://opensource.org/licenses/MIT)

Site institucional do **Instituto Refaz**, uma organização não-governamental que transforma vidas através de esporte e educação no Rio de Janeiro.

## ✨ Funcionalidades

- **Blog dinâmico** com sistema de posts e categorização por tags
- **Site totalmente responsivo** com design moderno
- **Galeria de imagens** com slider interativo
- **Otimização avançada de imagens** (WebP, lazy loading)
- **Feed RSS/Atom** para distribuição de conteúdo
- **Sistema de newsletter** integrado
- **Páginas de transparência** e prestação de contas
- **Menu mobile** responsivo

## 🚀 Começando

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
   # Edite o arquivo src/_data/config.json com suas informações
   ```

4. **Execute em desenvolvimento**
   ```bash
   npm run dev
   ```
   O site estará disponível em `[...]`

## 📁 Estrutura do Projeto

```
instituto-refaz/
├── src/
│   ├── _includes/         # Templates e componentes
│   ├── _data/            # Dados globais (config.json)
│   ├── assets/           # Arquivos estáticos
│   │   ├── images/       # Imagens do site
│   │   ├── js/           # JavaScript
│   │   └── styles/       # CSS modularizado
│   ├── blog/posts/       # Artigos em Markdown
│   └── páginas do site
├── _site/               # Build de produção
└── arquivos de configuração
```

## 🛠️ Comandos Úteis

```bash
npm run dev      # Desenvolvimento com hot reload
npm run build    # Build para produção
npm start        # Alias para npm run dev
```

## 📝 Gerenciamento de Conteúdo

### Adicionar Novo Post

Crie arquivos em `src/blog/posts/` no formato:

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

## 🎨 Personalização

- **Cores e estilos**: Edite `src/assets/styles/base/_variables.css`
- **Conteúdo**: Modifique as páginas em `src/`
- **Configurações**: Ajuste `src/_data/config.json`

## 🤝 Como Contribuir

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📞 Contato

**Instituto Refaz**
- Email: contato@institutorefaz.org
- Instagram: [@instituto_refaz](https://instagram.com/instituto_refaz)
- WhatsApp: (21) 98765-4321

**Desenvolvedor**: Ferinha - [@lucax.ui](https://www.instagram.com/lucax.ui/)

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para detalhes.

---

*Desenvolvido com ♥ para transformar vidas através da educação e esporte.*
