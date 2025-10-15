# XML → XSLT → HTML (Publication Demo)

This repository demonstrates a clean XML publication workflow:
- Authoring in **XML** with semantic structure
- **XSLT 1.0** transformation to **HTML5**
- Minimal **CSS** styling
- Deployable on **GitHub Pages**

---

## 🚀 Live demos (GitHub Pages)

> ⚠️ Note: several browsers disable XSLT for remote files.  
> If an XML page looks unstyled, use the **static HTML** version (always works).

### English
- XML (browser applies XSL):  
  https://g-zbinden.github.io/IAResources-XML-Demo/xml/article.xml  
- Static HTML (recommended / always works):  
  https://g-zbinden.github.io/IAResources-XML-Demo/xml/article.html

### Français
- XML (XSL dans le navigateur) :  
  https://g-zbinden.github.io/IAResources-XML-Demo/xml/article-fr.xml  
- HTML statique (recommandé) :  
  https://g-zbinden.github.io/IAResources-XML-Demo/xml/article-fr.html

---

## 📂 Structure

/
├─ css/
│ └─ site.css
├─ xsl/
│ └─ html.xsl
├─ xml/
│ ├─ article.xml
│ ├─ article.html
│ ├─ article-fr.xml
│ └─ article-fr.html
├─ .nojekyll
└─ index.html


---

## 🔧 Publish on GitHub Pages
1. **Settings → Pages**  
2. *Source*: **Deploy from a branch**  
3. *Branch*: `main` · *Folder*: `/ (root)` → **Save**  
4. Ensure a file named **`.nojekyll`** exists at the repo root.

---

## 📝 Notes
- Standards: **XML 1.0**, **XSLT 1.0**, **HTML5**, **UTF-8**  
- XSL link in XML uses an absolute path to this repo (Pages subpath).  
- Legal: **2025 © Gonzalo Zbinden — All rights reserved.**


