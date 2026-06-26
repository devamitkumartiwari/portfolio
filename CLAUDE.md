# CLAUDE.md — Portfolio

Flutter web portfolio for **Amit Kumar Tiwari** — Freelance Full Stack Developer (Flutter · .NET · Spring Boot · Native Android Java/Kotlin), 10+ years experience.

## Key Commands

```bash
flutter pub get                          # install / sync dependencies
flutter run -d chrome                    # run in Chrome (dev, hot-reload)
flutter build web --release              # production build → build/web/
flutter build web --debug                # debug build (faster, unminified)
flutter analyze                          # static analysis
flutter clean && flutter pub get         # reset when builds break
```

## Bootstrap — important

`web/index.html` loads **`flutter_bootstrap.js`** (async). This is the Flutter 3.22+ pattern. The generated `flutter_bootstrap.js` sets `_flutter.buildConfig` and calls `_flutter.loader.load()`. **Never revert to the old inline `_flutter.loader.load({onEntrypointLoaded})` pattern** — it breaks on Flutter 3.22+ because `buildConfig` would be unset.

## Architecture

| Concern | Solution |
|---|---|
| State management | Riverpod `ChangeNotifierProvider` (`flutter_riverpod`) |
| Routing | `go_router` with `PathUrlStrategy` (clean URLs, no hash) |
| Theme | `animated_theme_switcher` wraps `MaterialApp.router`; dark is default |
| Layout | Single-page scroll with `GlobalKey` anchors; `Header` as `Stack` overlay |
| Header height | `kHeaderHeight = 68.0` — **scroll content must start with `SizedBox(height: kHeaderHeight)`** |

## Project Structure

```
lib/
├── main.dart                      # entry — WidgetsFlutterBinding + PathUrlStrategy + ProviderScope
├── app.dart                       # MyApp — ThemeProvider + MaterialApp.router
├── core/
│   ├── routes/routes.dart         # go_router config (Routes constants + RouterGenerator)
│   └── utils/
│       ├── constants.dart         # all color tokens, kHeaderHeight, AppConstants (URLs, asset paths)
│       ├── screen_helper.dart     # ScreenHelper (breakpoints) + PageWrapper (responsive centering)
│       ├── globals.dart           # Globals.scaffoldKey
│       └── utils.dart             # Utilty helpers (openUrl, openMail, etc.)
├── models/                        # pure data classes (ProjectModel, TechnologyModel, etc.)
├── provider/
│   ├── theme.dart                 # CustomThemeProvider + MyThemes (light/dark ThemeData)
│   └── home.dart                  # HomeProvider — GlobalKeys + scrollBasedOnHeader()
├── pages/
│   ├── home/
│   │   ├── home.dart              # Home scaffold + end-drawer; first scroll child = SizedBox(kHeaderHeight)
│   │   └── components/
│   │       ├── header.dart        # Header (glass morphism, 68px) + HeaderLogo + HeaderRow
│   │       ├── carousel.dart      # Hero section — "Full Stack Developer" badge, tech pills, CTA
│   │       ├── about.dart         # About — bio (Flutter + Spring Boot + Android), pillar chips, tech stack
│   │       ├── service.dart       # Services — 6 cards (3×2 grid): Flutter, Android, Spring Boot, Full Stack, Blog, OSS
│   │       ├── project.dart       # ProjectSection + _ProjectCard
│   │       ├── portfolio_stats.dart # Stats banner: Years, Projects, Pub.dev Downloads, Awards
│   │       └── footer.dart        # Contact section
│   └── works/
│       ├── works.dart             # MyWorksScreen; first scroll child = SizedBox(kHeaderHeight)
│       └── components/
│           └── work_section.dart  # WorkSection + _WorkCard
└── widgets/
    ├── header.dart                # CommonHeader — glass header for works page (back btn + theme toggle)
    └── switch.dart                # CustomSwitch (dark/light animated toggle)
```

## Routing & Navigation

| Path     | Widget           | Notes |
|----------|------------------|-------|
| `/`      | `Home`           | single-page with anchor scroll |
| `/works` | `MyWorksScreen`  | named `Routes.myWorks` |

Scroll targets map in `HomeProvider.scrollBasedOnHeader()`:

| Nav label  | Scrolls to         |
|------------|--------------------|
| Home       | `homeKey` (Carousel) |
| About      | `aboutKey` |
| Skills     | `servicesKey` |
| Projects   | `portfolioKey` |
| Contact    | `contactKey` |
| Blog       | opens Medium URL |

## Design System

### Color Tokens (`lib/core/utils/constants.dart`)

| Token | Value | Use |
|-------|-------|-----|
| `kAccent` | `#7C3AED` | violet — primary CTA, accent |
| `kAccentCyan` | `#06B6D4` | cyan — gradient partner |
| `kDarkBg` | `#0F0F14` | dark scaffold background |
| `kDarkSurface` | `#18181F` | dark card backgrounds |
| `kDarkCard` | `#22222D` | dark card fill |
| `kLightBg` | `#FAFAFFE` | light scaffold background |
| `kDarkText` | `#F1F1F5` | dark mode body text |
| `kLightText` | `#0D0D14` | light mode body text |

### Breakpoints (`ScreenHelper`)

| Range | Method |
|-------|--------|
| `< 800px` | `isMobile(ctx)` |
| `800–1199px` | `isTablet(ctx)` |
| `≥ 1200px` | `isDesktop(ctx)` |

Max content width: `kDesktopMaxWidth = 1200.0`. Always wrap section content in `PageWrapper`.

### Typography

Google Fonts **Outfit** throughout. Applied globally via `ThemeData.textTheme`; individual widgets use `GoogleFonts.outfit(...)`.

### Header (glass morphism)

Header is a `Stack` overlay — last child in the `Stack` inside `home.dart` / `works.dart`.

```dart
// Always uses ClipRect + BackdropFilter + Container with:
//   height: kHeaderHeight (68px)
//   color: bg.withValues(alpha: 0.88)
//   border-bottom: kDarkBorder / kLightBorder
```

Scroll content **must** begin with `const SizedBox(height: kHeaderHeight)` to prevent overlap.

## Full Stack Identity

The portfolio presents three capability pillars:

| Pillar | Tech |
|--------|------|
| Mobile Cross-Platform | Flutter (iOS, Android, Web) |
| Native Android | Java · Kotlin · Jetpack |
| Backend / APIs | .NET Core · Java Spring Boot · REST · Microservices |

Reflected in: hero badge, bio text, services cards, about pillar chips, tech stack.

## Dependencies

| Package | Purpose |
|---------|---------|
| `flutter_riverpod` | state management |
| `go_router` | declarative routing |
| `flutter_web_plugins` | `PathUrlStrategy` for clean URLs |
| `animated_theme_switcher` | animated dark/light theme clip transition |
| `flutter_svg` `^2.0.10+1` | SVG rendering (hero illustration) |
| `flutter_animate` | entry animations in hero section |
| `google_fonts` | Outfit typeface |
| `font_awesome_flutter` | social icons |
| `url_launcher` | open external URLs / email / phone |

## Assets

```
assets/
├── svg/
│   └── dashboard.svg          # hero SVG illustration
└── images/
    ├── dev_image.webp          # developer photo (About section)
    ├── social/                 # social platform logos
    └── technology/             # Flutter, Android, Kotlin, Spring Boot, Java, iOS, JS icons
```

## Deployment

Firebase Hosting (`firebase.json`). Build & deploy:

```bash
flutter build web --release
firebase deploy
```

Live: `https://amitkumartiwarimobiledeveloper.web.app/`
