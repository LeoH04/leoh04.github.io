#!/usr/bin/env bash

set -e

SITE_DIR="personal-site"

echo "📁 Erstelle Projektordner: $SITE_DIR"
mkdir -p "$SITE_DIR"
cd "$SITE_DIR"

echo "📝 Erstelle index.html"
cat > index.html << 'EOF'
<!doctype html>
<html lang="de">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Dein Name</title>
  <meta name="description" content="Persönliche Seite von Dein Name" />
  <link rel="stylesheet" href="style.css" />
</head>
<body>
  <main class="card">
    <header>
      <h1>Dein Name</h1>
      <p class="subtitle">Kurzbeschreibung · Stadt</p>
    </header>

    <section>
      <p>
        Hi! Ich bin Dein Name.
        Das ist meine kleine persönliche Seite.
      </p>
    </section>

    <nav class="links">
      <a href="https://github.com/deinuser">GitHub</a>
      <a href="mailto:du@beispiel.de">E-Mail</a>
    </nav>

    <footer>
      <small>© <span id="year"></span> Dein Name</small>
    </footer>
  </main>

  <script>
    document.getElementById("year").textContent =
      new Date().getFullYear();
  </script>
</body>
</html>
EOF

echo "🎨 Erstelle style.css"
cat > style.css << 'EOF'
:root {
  --bg: #0f172a;
  --card: rgba(255,255,255,0.08);
  --text: #e5e7eb;
  --muted: #9ca3af;
  --border: rgba(255,255,255,0.15);
}

* { box-sizing: border-box; }

body {
  margin: 0;
  min-height: 100vh;
  display: grid;
  place-items: center;
  font-family: system-ui, sans-serif;
  background: var(--bg);
  color: var(--text);
}

.card {
  max-width: 640px;
  padding: 28px;
  border-radius: 16px;
  background: var(--card);
  border: 1px solid var(--border);
}

.subtitle {
  color: var(--muted);
}

.links {
  display: flex;
  gap: 12px;
  margin-top: 16px;
}

.links a {
  color: var(--text);
  text-decoration: none;
  border: 1px solid var(--border);
  padding: 8px 12px;
  border-radius: 10px;
}

.links a:hover {
  background: rgba(255,255,255,0.08);
}

footer {
  margin-top: 20px;
  color: var(--muted);
}
EOF

echo "✅ Fertig!"
echo "👉 Öffne $SITE_DIR/index.html im Browser oder pushe den Ordner zu GitHub Pages."
