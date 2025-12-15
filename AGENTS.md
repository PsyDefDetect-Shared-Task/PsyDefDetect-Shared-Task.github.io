# Repository Guidelines

## Project Structure & Module Organization
The site is a Jekyll theme: `_config.yml` drives global settings, while `_layouts/`, `_includes/`, and `_sass/` hold HTML shells, shared fragments, and SCSS partials. Assets such as icons, scripts, and translations live under `assets/` and `_data/`. Content previews live in `_posts/` and page roots (`index.md`, `about.md`, etc.). The `docs/` tree powers the public documentation site, and `test/` mirrors a minimal consumer project for integration checks. Build artifacts are written to `_site/`; never edit files there directly. Docker definitions in `docker/` provide reproducible environments for CI and demos.

## Build, Test, and Development Commands
Install dependencies with `bundle install` and `npm install`. Use `npm run serve` (alias for `bundle exec jekyll serve -H 0.0.0.0`) for local development; add `-t` or `--config docs/_config.yml` as in the existing npm scripts for targeted previews. Run `npm run build` to produce a production `_site/`. Front-end linting lives in `npm run eslint` and `npm run stylelint`; append `-fix` variants to auto-correct. Docker users can start a live environment via `npm run docker-dev:default` or the other compose scripts when validating release images.

## Coding Style & Naming Conventions
Favor 2-space indentation for Liquid, HTML, SCSS, and Ruby configs. Componentized SCSS lives in `_sass/components/`; use BEM-like class names (`.card__title`) to stay compatible with the shipped skins. JavaScript inside `_includes/**/*.js` should remain ES5-compatible, with modules wrapped in IIFEs unless a specific layout requires otherwise. Run Prettier-style alignment manually only when Liquid tags become unreadable—automated formatters often break them.

## Testing Guidelines
Treat `test/` as the canonical fixture: run `bundle exec jekyll build --config test/_config.yml` before submitting theme changes to ensure consumers can build. Validate accessibility and layout regressions by spot-checking `test/index.html` output in `_site/`. ESLint and Stylelint must pass with zero warnings; add small fixtures under `test/_posts/` when demonstrating new components. If a change touches Docker, rebuild with `npm run docker-dev:build-image` to confirm the image uses the updated assets.

## Commit & Pull Request Guidelines
Follow Conventional Commits (`feat: add badge component`, `fix: resolve dark skin spacing`); commitlint enforces this. Each PR should describe motivation, list key files touched, and link the driving issue. Include before/after screenshots or GIFs for visual updates, and note any configuration switches needed in `_config.yml`. Confirm `npm run build`, lints, and the `test/` build all succeed before requesting review.
