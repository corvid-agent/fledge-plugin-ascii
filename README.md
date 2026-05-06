# fledge-plugin-ascii

Render text as ASCII art banners in the terminal. Supports A-Z, 0-9, and common punctuation across three font styles.

## Install

```bash
fledge plugins install corvid-agent/fledge-plugin-ascii
```

## Usage

```bash
fledge ascii <command> [args]
```

## Commands

| Command | Description |
|---------|-------------|
| `render <TEXT> [--font <FONT>]` | Render text as an ASCII art banner |
| `fonts` | List available fonts |

### Fonts

- `block` -- Bold block characters using `█` (default)
- `hash` -- Hash character style (`#`)
- `star` -- Asterisk style (`*`)

## Examples

```bash
fledge ascii render "Hello World"
fledge ascii render "DEPLOY" --font hash
fledge ascii render "OK" --font star
fledge ascii fonts
```

## License

MIT
