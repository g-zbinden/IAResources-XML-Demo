# IAResources-XML-Demo
# XML Publication Demo (XML → XSLT → HTML)

This repository demonstrates a clean XML publication workflow:
- Authoring in **XML** with semantic structure
- **XSLT** transformation to accessible **HTML5**
- Simple **CSS** for publication styling
- Designed to be browsable on **GitHub Pages**

## Files
- `xml/article.xml` — Source XML (with processing instruction to load `xsl/html.xsl`)
- `xsl/html.xsl` — XSLT 1.0 transforming XML → HTML5
- `css/site.css` — Minimal styles
- `index.html` — Project overview (landing)

## How to view
1) Enable **GitHub Pages**: Settings → Pages → Deploy from a branch → Branch: `main` / `(root)`
2) Open: `https://<your-user>.github.io/IAResources-XML-Demo/xml/article.xml`
   The browser will apply the XSL and render HTML.

## Notes
- Standards: XML 1.0, XSLT 1.0, HTML5, UTF-8.
- Accessibility: landmarks, headings, alt text.
- Internationalization-ready (en/fr/es).

© IA Resources Switzerland — All rights reserved.
