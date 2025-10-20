<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:atom="http://www.w3.org/2005/Atom"
exclude-result-prefixes="atom"
>

<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml" lang="pt-BR">
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta name="description" content="Feed RSS do Instituto Refaz - Notícias e atualizações sobre nossos projetos sociais em educação, esporte e sustentabilidade." />
    <meta name="keywords" content="RSS, Instituto Refaz, projetos sociais, educação, esporte, sustentabilidade, transformação social" />
    <link href="assets/styles/normalize.css" rel="stylesheet" type="text/css" />
    <link href="assets/styles/rss.css" rel="stylesheet" type="text/css" />
    <title><xsl:value-of select="/atom:feed/atom:title"/> RSS Feed</title>
    <style>
        /* Reset e base */
        * {
            box-sizing: border-box;
        }

        html {
            font-size: 18px;
            scrollbar-gutter: stable;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
            background-color: #f0f0f0;
            line-height: 1.6;
        }

        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            margin: 2rem auto;
            gap: 1.5rem;
            max-width: 1200px;
            padding: 0 1rem;
        }

        /* Cabeçalho */
        header {
            width: 100%;
            border: 1px solid #ddd;
            padding: 2rem;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        header h1 {
            color: #2c5530;
            margin-bottom: 0.5rem;
            font-size: 2rem;
        }

        header h2 {
            color: #666;
            font-size: 1.2rem;
            font-weight: normal;
            margin-bottom: 1rem;
        }

        /* Conteúdo principal */
        main {
            width: 100%;
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
        }

        /* Artigos */
        article {
            border: 1px solid #ddd;
            padding: 1.5rem;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        article:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0,0,0,0.15);
        }

        article h3 {
            margin-top: 0;
            margin-bottom: 1rem;
        }

        article h3 a {
            color: #2c5530;
            text-decoration: none;
            font-size: 1.3rem;
        }

        article h3 a:hover,
        article h3 a:focus {
            color: #1e3a24;
            text-decoration: underline;
            outline: 2px solid #2c5530;
            outline-offset: 2px;
        }

        .content-summary {
            margin-bottom: 1rem;
            color: #333;
        }

        .content-summary p {
            margin-bottom: 1rem;
        }

        .content-summary ul,
        .content-summary ol {
            margin-bottom: 1rem;
            padding-left: 1.5rem;
        }

        .content-summary li {
            margin-bottom: 0.5rem;
        }

        .content-summary blockquote {
            border-left: 4px solid #2c5530;
            padding-left: 1rem;
            margin-left: 0;
            color: #666;
            font-style: italic;
        }

        .article-footer {
            border-top: 1px solid #eee;
            padding-top: 1rem;
            margin-top: 1rem;
            font-size: 0.9rem;
            color: #666;
        }

        /* Links de assinatura */
        .subscribe-link {
            display: inline-block;
            background-color: #2c5530;
            color: white;
            padding: 0.75rem 1.5rem;
            text-decoration: none;
            border-radius: 4px;
            margin-top: 1rem;
        }

        .subscribe-link:hover,
        .subscribe-link:focus {
            background-color: #1e3a24;
            text-decoration: none;
            outline: 2px solid #4a7c59;
            outline-offset: 2px;
        }

        /* Rodapé */
        footer[role="contentinfo"] {
            width: 100%;
            text-align: center;
            padding: 1rem;
            color: #666;
            border-top: 1px solid #ddd;
            margin-top: 2rem;
        }

        /* Acessibilidade - Skip link */
        .skip-link {
            position: absolute;
            top: -40px;
            left: 6px;
            background: #2c5530;
            color: white;
            padding: 8px;
            text-decoration: none;
            z-index: 1000;
        }

        .skip-link:focus {
            top: 6px;
        }

        /* High contrast mode support */
        @media (prefers-contrast: high) {
            article {
                border: 2px solid #000;
            }
            
            article h3 a {
                text-decoration: underline;
            }
        }

        /* Reduced motion */
        @media (prefers-reduced-motion: reduce) {
            article {
                transition: none;
            }
            
            article:hover {
                transform: none;
            }
        }

        /* Responsividade */
        @media (max-width: 768px) {
            body {
                margin: 1rem auto;
                padding: 0 0.5rem;
            }
            
            header,
            main,
            article {
                width: 100%;
            }
            
            header {
                padding: 1rem;
            }
            
            article {
                padding: 1rem;
            }
            
            html {
                font-size: 16px;
            }
            
            header h1 {
                font-size: 1.5rem;
            }
            
            article h3 a {
                font-size: 1.1rem;
            }
        }

        /* Impressão */
        @media print {
            .subscribe-link,
            footer[role="contentinfo"] {
                display: none;
            }
            
            article {
                break-inside: avoid;
                border: 1px solid #000;
            }
        }
    </style>
    </head>
    <body>
        <header role="banner">
            <h1><xsl:value-of select="atom:feed/atom:title" /> RSS Feed</h1>
            <h2><xsl:value-of select="atom:feed/atom:subtitle" /> </h2>
            
            <xsl:choose>
                <xsl:when test="atom:feed/atom:author/atom:email">
                    <p>Por
                        <a href="mailto:{atom:feed/atom:author/atom:email}" aria-label="Enviar email para {atom:feed/atom:author/atom:name}">
                        <xsl:value-of select="atom:feed/atom:author/atom:name" />
                        </a>
                    </p>
                </xsl:when>
                <xsl:otherwise>
                    <p>Por <xsl:value-of select="atom:feed/atom:author/atom:name" /></p>
                </xsl:otherwise>
            </xsl:choose>
            
            <time datetime="{atom:feed/atom:updated}">Última postagem: 
                <xsl:call-template name="format-date">
                    <xsl:with-param name="date-string" select="atom:feed/atom:updated"/>
                </xsl:call-template>
            </time>
            
            <p>Esta é apenas uma prévia do feed.</p>
            
            <a href="{atom:feed/atom:link/@href}" class="subscribe-link" aria-label="Adicione esta URL a um leitor RSS para assinar">
                <strong>Adicione esta URL a um leitor RSS para assinar!</strong>
            </a>
        </header>

        <main role="main">
            <xsl:for-each select="/atom:feed/atom:entry">
                <xsl:sort select="atom:updated" order="descending"/>
                <article aria-labelledby="title-{position()}" role="article">
                    <h3 id="title-{position()}">
                        <a href="{atom:link/@href}" 
                           title="Leia mais sobre: {atom:title}"
                           aria-label="Leia mais sobre: {atom:title}">
                            <xsl:value-of select="atom:title"/>
                        </a>
                    </h3>
                    
                    <div class="content-summary">
                        <xsl:value-of select="atom:content" disable-output-escaping="yes"/>
                    </div>
                    
                    <footer class="article-footer">
                        <p><strong>Atualizado em:</strong> 
                            <xsl:call-template name="format-date">
                                <xsl:with-param name="date-string" select="atom:updated"/>
                            </xsl:call-template>
                        </p>
                    </footer>
                </article>
            </xsl:for-each>
        </main>

        <footer role="contentinfo">
            <p>© <xsl:value-of select="substring(atom:feed/atom:updated, 1, 4)" /> Instituto Refaz. Todos os direitos reservados.</p>
        </footer>
    </body>
</html>
</xsl:template>

<!-- Template para formatação de data no formato brasileiro -->
<xsl:template name="format-date">
    <xsl:param name="date-string"/>
    <xsl:value-of select="concat(
        substring($date-string, 9, 2), '/',
        substring($date-string, 6, 2), '/',
        substring($date-string, 1, 4)
    )"/>
</xsl:template>

</xsl:stylesheet>