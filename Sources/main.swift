// fledge-plugin-ascii — Render text as ASCII art banners
// Part of the fledge plugin ecosystem (https://github.com/corvid-agent/fledge-plugin-ascii)

import Foundation

// MARK: - Font Definitions

/// Each character is represented as an array of strings (rows).
/// All characters are 7 lines tall for consistent rendering.

struct Font {
    let name: String
    let description: String
    let characters: [Character: [String]]
}

// MARK: - Block Font (uses █ ▄ ▀ and spaces)

let blockFont: Font = {
    let chars: [Character: [String]] = [
        "A": [
            "  ███  ",
            " █   █ ",
            " █   █ ",
            " █████ ",
            " █   █ ",
            " █   █ ",
            " █   █ ",
        ],
        "B": [
            " ████  ",
            " █   █ ",
            " █   █ ",
            " ████  ",
            " █   █ ",
            " █   █ ",
            " ████  ",
        ],
        "C": [
            "  ████ ",
            " █     ",
            " █     ",
            " █     ",
            " █     ",
            " █     ",
            "  ████ ",
        ],
        "D": [
            " ████  ",
            " █   █ ",
            " █   █ ",
            " █   █ ",
            " █   █ ",
            " █   █ ",
            " ████  ",
        ],
        "E": [
            " █████ ",
            " █     ",
            " █     ",
            " ████  ",
            " █     ",
            " █     ",
            " █████ ",
        ],
        "F": [
            " █████ ",
            " █     ",
            " █     ",
            " ████  ",
            " █     ",
            " █     ",
            " █     ",
        ],
        "G": [
            "  ████ ",
            " █     ",
            " █     ",
            " █  ██ ",
            " █   █ ",
            " █   █ ",
            "  ████ ",
        ],
        "H": [
            " █   █ ",
            " █   █ ",
            " █   █ ",
            " █████ ",
            " █   █ ",
            " █   █ ",
            " █   █ ",
        ],
        "I": [
            " █████ ",
            "   █   ",
            "   █   ",
            "   █   ",
            "   █   ",
            "   █   ",
            " █████ ",
        ],
        "J": [
            " █████ ",
            "     █ ",
            "     █ ",
            "     █ ",
            "     █ ",
            " █   █ ",
            "  ███  ",
        ],
        "K": [
            " █   █ ",
            " █  █  ",
            " █ █   ",
            " ██    ",
            " █ █   ",
            " █  █  ",
            " █   █ ",
        ],
        "L": [
            " █     ",
            " █     ",
            " █     ",
            " █     ",
            " █     ",
            " █     ",
            " █████ ",
        ],
        "M": [
            " █   █ ",
            " ██ ██ ",
            " █ █ █ ",
            " █ █ █ ",
            " █   █ ",
            " █   █ ",
            " █   █ ",
        ],
        "N": [
            " █   █ ",
            " ██  █ ",
            " █ █ █ ",
            " █ █ █ ",
            " █ █ █ ",
            " █  ██ ",
            " █   █ ",
        ],
        "O": [
            "  ███  ",
            " █   █ ",
            " █   █ ",
            " █   █ ",
            " █   █ ",
            " █   █ ",
            "  ███  ",
        ],
        "P": [
            " ████  ",
            " █   █ ",
            " █   █ ",
            " ████  ",
            " █     ",
            " █     ",
            " █     ",
        ],
        "Q": [
            "  ███  ",
            " █   █ ",
            " █   █ ",
            " █   █ ",
            " █ █ █ ",
            " █  █  ",
            "  ██ █ ",
        ],
        "R": [
            " ████  ",
            " █   █ ",
            " █   █ ",
            " ████  ",
            " █ █   ",
            " █  █  ",
            " █   █ ",
        ],
        "S": [
            "  ████ ",
            " █     ",
            " █     ",
            "  ███  ",
            "     █ ",
            "     █ ",
            " ████  ",
        ],
        "T": [
            " █████ ",
            "   █   ",
            "   █   ",
            "   █   ",
            "   █   ",
            "   █   ",
            "   █   ",
        ],
        "U": [
            " █   █ ",
            " █   █ ",
            " █   █ ",
            " █   █ ",
            " █   █ ",
            " █   █ ",
            "  ███  ",
        ],
        "V": [
            " █   █ ",
            " █   █ ",
            " █   █ ",
            " █   █ ",
            " █   █ ",
            "  █ █  ",
            "   █   ",
        ],
        "W": [
            " █   █ ",
            " █   █ ",
            " █   █ ",
            " █ █ █ ",
            " █ █ █ ",
            " ██ ██ ",
            " █   █ ",
        ],
        "X": [
            " █   █ ",
            " █   █ ",
            "  █ █  ",
            "   █   ",
            "  █ █  ",
            " █   █ ",
            " █   █ ",
        ],
        "Y": [
            " █   █ ",
            " █   █ ",
            "  █ █  ",
            "   █   ",
            "   █   ",
            "   █   ",
            "   █   ",
        ],
        "Z": [
            " █████ ",
            "     █ ",
            "    █  ",
            "   █   ",
            "  █    ",
            " █     ",
            " █████ ",
        ],
        "0": [
            "  ███  ",
            " █   █ ",
            " █  ██ ",
            " █ █ █ ",
            " ██  █ ",
            " █   █ ",
            "  ███  ",
        ],
        "1": [
            "   █   ",
            "  ██   ",
            "   █   ",
            "   █   ",
            "   █   ",
            "   █   ",
            " █████ ",
        ],
        "2": [
            "  ███  ",
            " █   █ ",
            "     █ ",
            "   ██  ",
            "  █    ",
            " █     ",
            " █████ ",
        ],
        "3": [
            "  ███  ",
            " █   █ ",
            "     █ ",
            "   ██  ",
            "     █ ",
            " █   █ ",
            "  ███  ",
        ],
        "4": [
            "    █  ",
            "   ██  ",
            "  █ █  ",
            " █  █  ",
            " █████ ",
            "    █  ",
            "    █  ",
        ],
        "5": [
            " █████ ",
            " █     ",
            " ████  ",
            "     █ ",
            "     █ ",
            " █   █ ",
            "  ███  ",
        ],
        "6": [
            "  ███  ",
            " █     ",
            " █     ",
            " ████  ",
            " █   █ ",
            " █   █ ",
            "  ███  ",
        ],
        "7": [
            " █████ ",
            "     █ ",
            "    █  ",
            "   █   ",
            "   █   ",
            "   █   ",
            "   █   ",
        ],
        "8": [
            "  ███  ",
            " █   █ ",
            " █   █ ",
            "  ███  ",
            " █   █ ",
            " █   █ ",
            "  ███  ",
        ],
        "9": [
            "  ███  ",
            " █   █ ",
            " █   █ ",
            "  ████ ",
            "     █ ",
            "     █ ",
            "  ███  ",
        ],
        " ": [
            "       ",
            "       ",
            "       ",
            "       ",
            "       ",
            "       ",
            "       ",
        ],
        "!": [
            "   █   ",
            "   █   ",
            "   █   ",
            "   █   ",
            "   █   ",
            "       ",
            "   █   ",
        ],
        "?": [
            "  ███  ",
            " █   █ ",
            "     █ ",
            "   ██  ",
            "   █   ",
            "       ",
            "   █   ",
        ],
        ".": [
            "       ",
            "       ",
            "       ",
            "       ",
            "       ",
            "       ",
            "   █   ",
        ],
        ",": [
            "       ",
            "       ",
            "       ",
            "       ",
            "       ",
            "   █   ",
            "  █    ",
        ],
        "-": [
            "       ",
            "       ",
            "       ",
            " █████ ",
            "       ",
            "       ",
            "       ",
        ],
        "_": [
            "       ",
            "       ",
            "       ",
            "       ",
            "       ",
            "       ",
            " █████ ",
        ],
        ":": [
            "       ",
            "   █   ",
            "   █   ",
            "       ",
            "   █   ",
            "   █   ",
            "       ",
        ],
        ";": [
            "       ",
            "   █   ",
            "   █   ",
            "       ",
            "   █   ",
            "   █   ",
            "  █    ",
        ],
        "'": [
            "   █   ",
            "   █   ",
            "  █    ",
            "       ",
            "       ",
            "       ",
            "       ",
        ],
        "\"": [
            "  █ █  ",
            "  █ █  ",
            "  █ █  ",
            "       ",
            "       ",
            "       ",
            "       ",
        ],
        "(": [
            "    █  ",
            "   █   ",
            "  █    ",
            "  █    ",
            "  █    ",
            "   █   ",
            "    █  ",
        ],
        ")": [
            "  █    ",
            "   █   ",
            "    █  ",
            "    █  ",
            "    █  ",
            "   █   ",
            "  █    ",
        ],
        "/": [
            "     █ ",
            "    █  ",
            "   █   ",
            "   █   ",
            "  █    ",
            " █     ",
            " █     ",
        ],
        "@": [
            "  ███  ",
            " █   █ ",
            " █ ███ ",
            " █ █ █ ",
            " █ ███ ",
            " █     ",
            "  ████ ",
        ],
        "#": [
            "  █ █  ",
            "  █ █  ",
            " █████ ",
            "  █ █  ",
            " █████ ",
            "  █ █  ",
            "  █ █  ",
        ],
        "+": [
            "       ",
            "   █   ",
            "   █   ",
            " █████ ",
            "   █   ",
            "   █   ",
            "       ",
        ],
        "=": [
            "       ",
            "       ",
            " █████ ",
            "       ",
            " █████ ",
            "       ",
            "       ",
        ],
        "&": [
            "  ██   ",
            " █  █  ",
            " █  █  ",
            "  ██   ",
            " █  █ █",
            " █   █ ",
            "  ███ █",
        ],
        "*": [
            "       ",
            " █ █ █ ",
            "  ███  ",
            " █████ ",
            "  ███  ",
            " █ █ █ ",
            "       ",
        ],
        "%": [
            " ██  █ ",
            " ██ █  ",
            "   █   ",
            "   █   ",
            "  █    ",
            " █ ██  ",
            " █ ██  ",
        ],
        "$": [
            "  ████ ",
            " █ █   ",
            " █ █   ",
            "  ███  ",
            "   █ █ ",
            "   █ █ ",
            " ████  ",
        ],
        "[": [
            "  ███  ",
            "  █    ",
            "  █    ",
            "  █    ",
            "  █    ",
            "  █    ",
            "  ███  ",
        ],
        "]": [
            "  ███  ",
            "    █  ",
            "    █  ",
            "    █  ",
            "    █  ",
            "    █  ",
            "  ███  ",
        ],
        "{": [
            "    ██ ",
            "   █   ",
            "   █   ",
            "  █    ",
            "   █   ",
            "   █   ",
            "    ██ ",
        ],
        "}": [
            " ██    ",
            "   █   ",
            "   █   ",
            "    █  ",
            "   █   ",
            "   █   ",
            " ██    ",
        ],
        "<": [
            "     █ ",
            "    █  ",
            "   █   ",
            "  █    ",
            "   █   ",
            "    █  ",
            "     █ ",
        ],
        ">": [
            " █     ",
            "  █    ",
            "   █   ",
            "    █  ",
            "   █   ",
            "  █    ",
            " █     ",
        ],
        "^": [
            "   █   ",
            "  █ █  ",
            " █   █ ",
            "       ",
            "       ",
            "       ",
            "       ",
        ],
        "~": [
            "       ",
            "       ",
            "  █  █ ",
            " █ ██  ",
            "       ",
            "       ",
            "       ",
        ],
    ]
    return Font(name: "block", description: "Bold block characters (█)", characters: chars)
}()

// MARK: - Hash Font (uses # characters)

func makeHashFont() -> Font {
    // Convert block font patterns: replace █ with #
    var chars: [Character: [String]] = [:]
    for (key, rows) in blockFont.characters {
        chars[key] = rows.map { row in
            String(row.map { ch -> Character in
                if ch == "█" { return "#" }
                return ch
            })
        }
    }
    return Font(name: "hash", description: "Hash character style (#)", characters: chars)
}

let hashFont = makeHashFont()

// MARK: - Star Font (uses * characters)

func makeStarFont() -> Font {
    var chars: [Character: [String]] = [:]
    for (key, rows) in blockFont.characters {
        chars[key] = rows.map { row in
            String(row.map { ch -> Character in
                if ch == "█" { return "*" }
                return ch
            })
        }
    }
    return Font(name: "star", description: "Star/asterisk style (*)", characters: chars)
}

let starFont = makeStarFont()

// MARK: - All Fonts

let allFonts: [Font] = [blockFont, hashFont, starFont]

func fontByName(_ name: String) -> Font? {
    return allFonts.first { $0.name == name.lowercased() }
}

// MARK: - Rendering

func renderText(_ text: String, font: Font) -> String {
    let uppercased = text.uppercased()
    let height = 7
    var lines = Array(repeating: "", count: height)

    for char in uppercased {
        if let pattern = font.characters[char] {
            for row in 0..<height {
                lines[row] += pattern[row] + " "
            }
        } else {
            // Unknown character — render as space
            let blank = "       "
            for row in 0..<height {
                lines[row] += blank + " "
            }
        }
    }

    return lines.joined(separator: "\n")
}

// MARK: - CLI

func printUsage() {
    print("""
    fledge-plugin-ascii — Render text as ASCII art banners

    USAGE:
        fledge ascii render <TEXT> [--font <FONT>]
        fledge ascii fonts

    COMMANDS:
        render    Render text as an ASCII art banner
        fonts     List available fonts

    OPTIONS:
        --font <FONT>    Font to use (default: block)
                         Available: block, hash, star

    EXAMPLES:
        fledge ascii render "Hello World"
        fledge ascii render "FLEDGE" --font hash
        fledge ascii render "Cool!" --font star
    """)
}

func handleRender(_ args: [String]) {
    var textParts: [String] = []
    var fontName = "block"
    var i = 0

    while i < args.count {
        if args[i] == "--font" {
            if i + 1 < args.count {
                fontName = args[i + 1]
                i += 2
            } else {
                print("Error: --font requires a value")
                exit(1)
            }
        } else {
            textParts.append(args[i])
            i += 1
        }
    }

    let text = textParts.joined(separator: " ")

    if text.isEmpty {
        print("Error: no text provided")
        print("Usage: fledge ascii render <TEXT> [--font <FONT>]")
        exit(1)
    }

    guard let font = fontByName(fontName) else {
        print("Error: unknown font '\(fontName)'")
        print("Available fonts: \(allFonts.map { $0.name }.joined(separator: ", "))")
        exit(1)
    }

    print(renderText(text, font: font))
}

func handleFonts() {
    print("Available fonts:\n")
    for font in allFonts {
        print("  \(font.name) — \(font.description)")
    }
    print("\nUsage: fledge ascii render <TEXT> --font <FONT>")
}

// MARK: - Main

let args = Array(CommandLine.arguments.dropFirst()) // drop executable path

if args.isEmpty || args.first == "--help" || args.first == "-h" {
    printUsage()
    exit(0)
}

let command = args[0]
let remaining = Array(args.dropFirst())

switch command {
case "render":
    handleRender(remaining)
case "fonts":
    handleFonts()
case "--help", "-h":
    printUsage()
default:
    // If no recognized command, treat entire args as text to render (convenience)
    handleRender(args)
}
