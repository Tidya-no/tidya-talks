# Bekjentskap med Kotlin — en Javaveterans reisebrev

## Om presentasjonen
- **Varighet:** 15–20 minutter
- **Målgruppe:** Kolleger i BR, junior til senior
- **Tone:** Balansert, personlig — ingen agenda, ingen dom. Espen sin stemme, ikke AI-stemme.
- **Foredragsholder:** Espen Ønvik Pedersen — Java siden tidlig 2000-tall, 6 måneder fullt med Kotlin, innleid konsulent i BR

---

## Teknisk stack

- **Reveal.js 5.1** — hash-navigering, fade-transition, slideNumber c/t
- **highlight.js** — monokai-tema, syntax highlighting for Java og Kotlin
- **Tema:** Kotlin-inspirert (lilla `#7F52FF`, mørk blå bakgrunn `#1A1A2E`) — byttes med én linje i `<link id="theme">`
- **Font:** JetBrains Mono gjennomgående
- **Kodeeksempler:** Java vises først, Kotlin fader inn som fragment — aldri side-om-side
- **Per-slide logo:** Kotlin K-logo inline i h2 på alle slides (28x28px), Java-logo på Java Strikes Back-slides (35x64px)
- **Duke (Java-maskot):** SVG absolutt posisjonert på "Kort om meg"-sliden
- **Auto-animate:** Kotlin-logoen morfes fra stor (tittelslide) til liten (Kort om meg)
- **Java Strikes Back:** `data-background-color="#1A0800"`, zoom-transition inn, oransje gradient-titler (`strikes-back-title`)
- **Fragmenter:** `fade-up` på kulelister i intro og konklusjon

---

## Slidestruktur (24 slides)

### 1. Tittelslide
- Kotlin K-logo (offisiell SVG med radiell gradient)
- Tittel: "Bekjentskap med Kotlin"
- Undertittel: "— en Javaveterans reisebrev"
- `data-auto-animate` — logoen morfes til neste slide

### 2. Kort om meg
- Duke SVG absolutt posisjonert ved siden av tittelen (`left:17em, top:-0.5em`, dempet med filter)
- 4 punkter med `fade-up`: konsulent i Brreg, Team Reelle/Våpen, Java siden 2000-tall, 6 måneder fullt Kotlin
- `data-auto-animate`

### 2b. Hvorfor laget JetBrains Kotlin?
- 5 punkter: JetBrains brukte Java selv, full Java-interop (kan kalle Java-kode direkte), tryggere språk, første stabile versjon 2016, Google Android 2017

### 3. Kotlin i verden (statistikk)
- 6 stat-kort i grid (3x2):
    - 51% av Kotlin-utviklere ønsker å fortsette (Java: 41,8%) — SO 2025
    - 10,8% av alle utviklere bruker Kotlin aktivt (Java: 29,4%) — SO 2025
    - 2,5M Kotlin-utviklere globalt (Java: ~23M) — KotlinConf 2025 / SlashData
    - "Rust, Go, and Kotlin continue their slow, steady ascent" — JetBrains 2025
    - 27% av Spring-utviklere har brukt Kotlin — Rod Johnson (skaperen av Spring), KotlinConf 2025
    - Spring Boot 4 har formalisert Kotlin som støttet førsteklasses språk — JetBrains blogg mai 2025
- Kildelenker i bunnen

### 4. Det som har vokst på meg (oversikt)
- 10 tags vist samlet (ingen fragment): Null-safety + Elvis (?:), val/var, data class + copy(), Smart casts, when + sealed classes, String templates, Default params, Top-level functions, Trailing lambdas, Extension functions

### 5. Null-safety
- Java: `hentBruker().getNavn().toUpperCase()` — krasjer i prod
- Kotlin (fragment): nullable-typer, `?.`, `?: "UKJENT"` med kommentar om Elvis-operatoren

### 6. Immutability som default
- Java: muterer status to ganger — ingen hindring
- Kotlin (fragment): `data class` + `val` + `copy()`

### 7. Smart casts
- Java: `instanceof` + manuell cast
- Kotlin (fragment): `is` → automatisk cast

### 8. String templates
- Java: strengkonkatenering med `+`
- Kotlin (fragment): `"${bruker.navn}! Du har $antall meldinger."`

### 9. Default parameters
- Java: tre overloads
- Kotlin (fragment): én metode med defaults og named arguments
- Note: Java har ingen plan for dette — Kotlin har forsprang

### 10. Top-level functions
- Java: `OrdreUtils`-klasse med private konstruktør
- Kotlin (fragment): `fun beregnMva(...)` direkte

### 11. Trailing lambdas
- Java: `stream().filter(n -> n > 1).toList()`
- Kotlin (fragment): `filter { it > 1 }` — én parameter heter automatisk `it`

### 12. Extension functions
- Java: `OrgNrUtils.erGyldig("974760843")`
- Kotlin (fragment): `"974760843".erGyldigOrganisasjonsnummer()`
- Note: finnes ikke i Java, ikke planlagt

### 13. when + sealed classes
- Kun Kotlin: `sealed interface` + `when` med exhaustiveness
- Note: compile-feil ved ny hendelsestype

### 14. Det jeg er usikker på
- **Scope functions** — to-kolonne: "uten" vs "med", spørsmål om kompakt alltid er mer lesbart
- **Coroutines** — suspend-eksempel + note om Virtual Threads som alternativ uten nye konsepter

### 15. Spring Boot + Kotlin
- Check-liste: Spring Boot 4 baseline, Kotlin DSL, coroutine-støtte
- Kode: beans DSL + kotlin-spring plugin gotcha

### 16. jOOQ + Kotlin
- Java-query vs Kotlin med trailing lambda og type inference

### 17. ⚡ Java Strikes Back (intro)
- `data-transition="zoom"`, `data-background-color="#1A0800"`
- Tags: Records, Sealed classes, Pattern matching, Virtual Threads, Value Classes preview, null-aware typer

### 18. Det Java har levert (slide A — Records + Sealed + Pattern Matching)
- Records (Java 16) og Sealed classes (Java 17)
- Pattern Matching (Java 16+) — eksempel med instanceof casting
- Blockquote: Kotlin hadde disse fra starten. Java fikk dem i 2016 og 2021.

### 19. Det Java har levert (slide B — Switch + Virtual Threads)
- Switch expressions (Java 21) med note: Kotlin hadde dette fra 2016
- Virtual Threads — Project Loom (Java 21), komplett Java 24, tilgjengelig Java 25 LTS

### 20. Krystallkula — på vei
- Tabell: Valhalla (Value Classes preview JDK 26), Valhalla (null-aware typer), Loom (levert), Amber (levert)
- Blockquote: Java lukker gapet — men Kotlin var der først

### 21. Hva sitter jeg igjen med? (konklusjon)
- 4 punkter med fade-up
- Blockquote: åpent spørsmål om neste gang
- Avslutning: "NullPointerException — følgesvenn siden 1995 😐"

### 22. Kilder
- Enkeltkolonne tabell med klikkbare lenker til alle 10 kilder

### 23. Takk / Spørsmål
- Kotlin-logo, "Takk!", åpent for spørsmål
- Link til Kotlin Playground: "Prøv ut Kotlin: play.kotlinlang.org"

---

## Statistikk — verifiserte 2025-tall

| Kilde | Tall | Merknad |
|---|---|---|
| SO Developer Survey 2025 | Kotlin 51% admired, Java 41,8% | Admired = vil fortsette å bruke |
| SO Developer Survey 2025 | Kotlin 10,8% brukt, Java 29,4% | Alle respondenter |
| JetBrains Ecosystem 2025 | Kotlin 18% reell bruk | Jevn vekst siden 2017 |
| KotlinConf 2025 / SlashData | 2,5M Kotlin-utviklere, ~23M Java | |
| JetBrains blogg mai 2025 | Spring Boot 4 formalisert Kotlin | |
| KotlinConf 2025 (Rod Johnson) | 27% av Spring-devs har brukt Kotlin | "har brukt", ikke "bruker aktivt" |

---

## Kilder med lenker

- [Stack Overflow Developer Survey 2025](https://survey.stackoverflow.co/2025/technology)
- [JetBrains Developer Ecosystem 2025](https://devecosystem-2025.jetbrains.com)
- [Spring.io — Spring Boot + Kotlin](https://spring.io/guides/tutorials/spring-boot-kotlin)
- [KotlinConf 2025 — Rod Johnson talk](https://2025.kotlinconf.com/talks/814508/)
- [JetBrains blogg — Spring partnerskap](https://blog.jetbrains.com/kotlin/2025/05/strategic-partnership-with-spring/)
- [OpenJDK — JEP 401: Value Classes](https://openjdk.org/jeps/401)
- [nipafx.dev — Inside Java Newscast](https://nipafx.dev/inside-java-newscast/)
- [Java Code Geeks](https://www.javacodegeeks.com)
- [JVM Weekly](https://www.jvmweekly.com)
- [Kotlin — offisiell dokumentasjon](https://kotlinlang.org/docs/home.html)

---

## Designprinsipper

- **Espens stemme, ikke AI-stemme** — tekst skal høres ut som Espen, ikke et salgsforedrag
- **Ærlighet fremfor hype** — inkludert det som er usikkert og det Java har hentet inn
- **Kode kun der det gir verdi** — Java vises alltid først, Kotlin fader inn
- **Balansert** — Java Strikes Back er en reell seksjon, ikke et PR-stunt for Kotlin
- **Humor:** selvironisk og tørr, ikke påtatt — f.eks. "NullPointerException — følgesvenn siden 1995"

---

## Viktige designdetaljer for Claude Code

### CSS-variabler
```css
--kotlin-purple: #7F52FF
--kotlin-pink:   #C757BC
--kotlin-orange: #E8494B
--kotlin-teal:   #00BCD4
--kotlin-green:  #4CAF50
--bg-dark:       #1A1A2E
--bg-mid:        #16213E
--code-bg:       #0D1117
--accent-line:   rgba(127, 82, 255, 0.4)
```

### Klasser
- `.section-badge` — seksjonsindikator øverst på slides (display: block, margin: 0 auto, text-align: center)
- `.slide-logo` — inline logo i h2 (28x28px Kotlin, 35x64px Java, vertical-align: middle)
- `.strikes-back-title` — oransje gradient h2 på Java Strikes Back
- `.stat-grid` — 3-kolonne grid for statistikk-kort
- `.stat-card` / `.stat-number` / `.stat-label` — statistikk-kort
- `.two-col` — to-kolonne grid layout
- `.check-list` / `.warn-list` — lister med ✓ og ⚠ prefiks
- `.code-label.java` / `.code-label.kotlin` — label over kodeblokker
- `.source-note` — liten kildetekst under slides

### Sentering og alignment
- Alle h2-elementer har `text-align: center` for konsistent sentering
- Section badges er sentrert med `display: block` + `margin: 0 auto` + `width: fit-content`
- Java Strikes Back slides bruker inline logoer i stedet for absolutt posisjonering for å bevare sentering

### SVG og logoer
- **Kotlin-logoer:** Bruker global `kotlin-gradient` definisjon for å unngå duplikat SVG-kode
- **Java-logoer:** Økt størrelse fra 28x51px til 35x64px for bedre synlighet
- **Gradient-optimalisering:** Fjernet 18 duplikate gradient-definisjoner, nå kun én global definisjon
- **Logo-synlighet:** Løst problem hvor bare første Kotlin-logo var synlig pga. dupliserte gradient-IDer

### Fragmenter
- `fragment fade-up` — brukes på kulelister i intro og konklusjon
- `fragment` — brukes på Kotlin-kodeblokker (fader inn etter Java)
- `fragment` — brukes på blockquotes

### Java Strikes Back
- `data-background-color="#1A0800"` på alle fire slides
- `data-transition="zoom"` kun på intro-sliden (slide 16)
- Java SVG-logo (viewBox 0 0 300 550, 35x64px) inline i h2 på slides 17-20
- Alle h2 har klassen `strikes-back-title`
- Logoer bruker `vertical-align: middle` i stedet for absolutt posisjonering

### Auto-animate
- Slide 1 og 2 har `data-auto-animate`
- Kotlin-logoen har `data-id="slide-logo"` på begge — morfes
- h1/h2 har `data-id="main-title"` på begge — morfes

### Reveal.js-konfigurasjon
```javascript
hash: true
slideNumber: 'c/t'
transition: 'fade'
transitionSpeed: 'fast'
backgroundTransition: 'fade'
width: 1280, height: 720, margin: 0.06
```

---

## Siste forbedringer og tekniske løsninger

### Logo-synlighet og SVG-optimalisering
- **Problem:** Kotlin-logoer var ikke synlige på flere slides pga. duplikate gradient-IDer
- **Løsning:** Global SVG-definisjon med `kotlin-gradient` ID, fjernet alle duplikater
- **Resultat:** Alle 19 Kotlin-logoer er nå synlige på alle slides

### Java-logo forbedring
- **Størrelse økt:** Fra 28x51px til 35x64px (25% større for bedre synlighet)
- **Beholdt alignment:** Inline posisjonering med `vertical-align: middle` bevart
- **Konsistent styling:** Samme margin og styling som Kotlin-logoer

### Presentasjonsstatus
- **Totalt slides:** 24 slides fullstendig implementert
- **Logo-implementering:** 22 slides med logoer (Kotlin: 19, Java: 3)
- **Alignment:** Alle section badges og h2-elementer konsistent sentrert
- **Kvalitetssikret:** Testet alle slides for synlighet og alignment