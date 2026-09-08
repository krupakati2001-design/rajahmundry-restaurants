<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>Rajahmundry Restaurants Sitemap</title>
        <style>
          :root { color-scheme: light; font-family: Arial, sans-serif; }
          body { margin: 0; padding: 2rem; background: #f4f6f8; color: #1f2937; }
          main { max-width: 900px; margin: auto; background: #fff; padding: 2rem; border-radius: 12px; box-shadow: 0 4px 18px rgba(0,0,0,.08); }
          h1 { margin-top: 0; color: #111827; }
          p { color: #4b5563; }
          table { width: 100%; border-collapse: collapse; margin-top: 1.5rem; }
          th, td { padding: .8rem; border-bottom: 1px solid #e5e7eb; text-align: left; }
          th { background: #f9fafb; color: #374151; }
          a { color: #2563eb; overflow-wrap: anywhere; }
          @media (max-width: 600px) {
            body { padding: 1rem; }
            main { padding: 1rem; }
            th, td { padding: .6rem .4rem; }
          }
        </style>
      </head>
      <body>
        <main>
          <h1>Rajahmundry Restaurants Sitemap</h1>
          <p>This sitemap helps search engines discover pages on this website.</p>
          <table>
            <thead>
              <tr>
                <th>Page</th>
                <th>Last updated</th>
                <th>Change frequency</th>
                <th>Priority</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="s:urlset/s:url">
                <tr>
                  <td><a href="{s:loc}"><xsl:value-of select="s:loc"/></a></td>
                  <td><xsl:value-of select="s:lastmod"/></td>
                  <td><xsl:value-of select="s:changefreq"/></td>
                  <td><xsl:value-of select="s:priority"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </main>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
