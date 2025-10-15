<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xml="http://www.w3.org/XML/1998/namespace">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:strip-space elements="*"/>

  <!-- Root template -->
  <xsl:template match="/">
    <html lang="{/article/@xml:lang}">
      <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title><xsl:value-of select="/article/title"/></title>
        <link rel="stylesheet" href="../css/site.css"/>
      </head>
      <body>
        <header>
          <h1><xsl:value-of select="/article/title"/></h1>
          <div class="article-meta">
            <strong>Author:</strong> <xsl:value-of select="/article/meta/author"/>
            · <strong>Date:</strong> <xsl:value-of select="/article/meta/date"/>
            · <strong>Lang:</strong> <xsl:value-of select="/article/@xml:lang"/>
          </div>
        </header>

        <main>
          <xsl:apply-templates select="/article/abstract"/>
          <xsl:apply-templates select="/article/section"/>
          <xsl:if test="/article/references/ref">
            <section>
              <h2>References</h2>
              <ol>
                <xsl:apply-templates select="/article/references/ref"/>
              </ol>
            </section>
          </xsl:if>
        </main>

        <footer>© IA Resources Switzerland — All rights reserved.</footer>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="abstract">
    <section>
      <h2>Abstract</h2>
      <p><xsl:apply-templates/></p>
    </section>
  </xsl:template>

  <xsl:template match="section">
    <section id="{@id}">
      <h2><xsl:value-of select="title"/></h2>
      <xsl:apply-templates select="p|figure|list"/>
    </section>
  </xsl:template>

  <xsl:template match="p"><p><xsl:apply-templates/></p></xsl:template>
  <xsl:template match="em"><em><xsl:apply-templates/></em></xsl:template>
  <xsl:template match="strong"><strong><xsl:apply-templates/></strong></xsl:template>
  <xsl:template match="code"><code><xsl:apply-templates/></code></xsl:template>

  <xsl:template match="list"><ul><xsl:apply-templates select="item"/></ul></xsl:template>
  <xsl:template match="item"><li><xsl:apply-templates/></li></xsl:template>

  <xsl:template match="figure">
    <figure>
      <img src="{@src}" alt="{@alt}"/>
      <figcaption><xsl:value-of select="caption"/></figcaption>
    </figure>
  </xsl:template>

  <xsl:template match="references/ref">
    <li>
      <xsl:value-of select="author"/> (<xsl:value-of select="year"/>) —
      <em><xsl:value-of select="title"/></em>.
      <xsl:if test="url">
        <xsl:text> </xsl:text>
        <a href="{url}" target="_blank" rel="noopener">Link</a>
      </xsl:if>
    </li>
  </xsl:template>

</xsl:stylesheet>
