---
published: true
title: Guia Completo de Markdown para Testes
siteDescription: Um documento abrangente com todos os elementos Markdown para
  fins de teste e referência. Ideal para desenvolvedores, escritores e qualquer
  pessoa que queira explorar as capacidades dessa linguagem de marcação simples
date: 2025-10-20
tags:
  - Markdown
  - Educação
---
## 📝 Elementos Básicos de Texto

### Cabeçalhos
# H1 - Título Principal
## H2 - Seção
### H3 - Subseção
#### H4 - Tópico
##### H5 - Subtópico
###### H6 - Item menor

### Ênfase de Texto
**Texto em negrito**  
*Texto em itálico*  
***Texto em negrito e itálico***  
~~Texto riscado~~  
`Texto em linha de código`

### Listas

#### Lista Não Ordenada
- Item de lista 1
- Item de lista 2
  - Subitem 2.1
  - Subitem 2.2
- Item de lista 3

#### Lista Ordenada
1. Primeiro item
2. Segundo item
   1. Subitem 2.1
   2. Subitem 2.2
3. Terceiro item

#### Lista de Tarefas
- [ ] Tarefa pendente
- [x] Tarefa concluída
- [ ] Outra tarefa

---

## 🔗 Links e Referências

[Link simples](https://www.exemplo.com)  
[Link com título](https://www.exemplo.com "Título do Link")  
[Link com referência][1]  
**Link em negrito**: [**exemplo.com**](https://www.exemplo.com)

[1]: https://www.exemplo.com

---

## 🖼️ Imagens e Mídia

![Imagem de exemplo]("Título da imagem")

**Imagem com link:**
[![Placeholder Image]()](https://www.exemplo.com)

---

## 📊 Tabelas

| Cabeçalho 1 | Cabeçalho 2 | Cabeçalho 3 |
|-------------|-------------|-------------|
| Célula 1    | Célula 2    | Célula 3    |
| **Negrito** | *Itálico*   | `Código`    |
| Linha 3     | Coluna 2    | Coluna 3    |

**Tabela com alinhamento:**
| Alinhado à esquerda | Centralizado | Alinhado à direita |
|:-------------------|:------------:|-------------------:|
| Conteúdo           | Conteúdo     | Conteúdo           |

---

## 💻 Código

### Bloco de Código Inline
Use `console.log('Hello World')` para imprimir no console.

### Bloco de Código com Syntax Highlighting
```javascript
function exemplo() {
    const mensagem = "Hello World";
    console.log(mensagem);
    return mensagem;
}
```

```python
def exemplo():
    mensagem = "Hello World"
    print(mensagem)
    return mensagem
```

```html
<!DOCTYPE html>
<html>
<head>
    <title>Exemplo</title>
</head>
<body>
    <h1>Hello World</h1>
</body>
</html>
```

---

## 📋 Citações e Blockquotes

> Esta é uma citação simples. Pode ser usada para destacar trechos importantes ou citações de outros autores.

> **Citação com formatação**  
> Você pode incluir *itálico*, **negrito**, e até mesmo `código` dentro de citações.
>
> — Autor Desconhecido

> ### Citação com cabeçalho
> Esta é uma citação multilinha que contém vários parágrafos e elementos diferentes.

---

## 📐 Elementos Diversos

### Linha Horizontal
---
***
___

### Notas de Rodapé
Aqui está uma frase com uma nota de rodapé[^1]. E aqui está outra[^2].

[^1]: Esta é a primeira nota de rodapé.
[^2]: Esta é a segunda nota de rodapé com **formatação**.

### Definições
Termo 1
: Definição do termo 1

Termo 2
: Definição do termo 2

---

## 🎨 Elementos Avançados

### Detalhes/Sumário
<details>
<summary>Clique para expandir</summary>

Conteúdo oculto que aparece quando expandido. Pode conter:

- Listas
- **Texto formatado**
- `Código`

```javascript
console.log("Exemplo expandido");
```
</details>

### Matemática (quando suportado)
Fórmula inline: $E = mc^2$

Fórmula em bloco:
$$
\int_{-\infty}^{\infty} e^{-x^2} dx = \sqrt{\pi}
$$
