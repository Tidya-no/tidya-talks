# Tidya Talks

Presentasjoner og foredrag fra Tidya sine konsulenter. Statisk, uten byggesteg.

**Live:** https://tidya-no.github.io/tidya-talks/

## Kjøre lokalt

Åpne `index.html` i nettleseren, eller kjør en enkel filserver:

```sh
npx http-server . -p 8080
```

## Designsystemet

Forsiden bruker [tidya-design-guide](https://github.com/Tidya-no/tidya-design-guide): `tokens.css`, `components.css`, `header.js`, `effects.js`, `fonts/` og `brand/` er kopier som ikke skal endres her. Endringer gjøres i guiden, og så kopieres de inn:

```sh
scripts/oppdater-design.sh ../tidya-design-guide
```

`talks.css` har bare det som er spesifikt for forsiden (bredde og luft). `body` har `class="editorial"` (Fraunces på overskrifter), og kortet bruker `card-link`, `card-accent` og `card-wave` fra guiden. Selve foredraget (`bekjentskap-med-kotlin.html`) er en Reveal.js-presentasjon med eget Kotlin-tema og bruker ikke guiden.
