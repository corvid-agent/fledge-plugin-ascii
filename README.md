# fledge-plugin-ascii

Render text as ASCII art banners in the terminal.

## Install

```bash
fledge plugins install corvid-agent/fledge-plugin-ascii
```

## Usage

```bash
fledge ascii render "Hello World"
fledge ascii render "DEPLOY" --font hash
fledge ascii render "OK" --font star
fledge ascii fonts
```

## Commands

- `render <TEXT> [--font <FONT>]` — Render text as an ASCII art banner
- `fonts` — List available fonts

## Fonts

- `block` — Bold block characters (default)
- `hash` — Hash character style (#)
- `star` — Asterisk style (*)
