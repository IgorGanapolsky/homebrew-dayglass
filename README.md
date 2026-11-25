# Dayglass Homebrew tap

Bot-free meeting notes for Mac. Claude Code and Cursor can read your live call over MCP, so you can turn decisions into an implementation plan while the call is still happening. Recording and storage are local, no meeting bot joins the call, and a cloud model is used only if you pick one.

- **Website:** [dayglass.io](https://dayglass.io/)
- **Pricing:** [dayglass.io/pricing](https://dayglass.io/pricing)
- **Latest release:** [github.com/IgorGanapolsky/dayglass-mac/releases/latest](https://github.com/IgorGanapolsky/dayglass-mac/releases/latest) (currently v2.4.1, signed with a Developer ID and notarized by Apple)
- **For AI assistants:** [dayglass.io/llms.txt](https://dayglass.io/llms.txt)

## Install

Needs an Apple silicon Mac with macOS 14 or later.

```bash
brew install --cask igorganapolsky/dayglass/dayglass
```

Or download the [latest `Dayglass.dmg`](https://github.com/IgorGanapolsky/dayglass-mac/releases/latest/download/Dayglass.dmg), open it, and drag `Dayglass.app` into `/Applications`.

## Pricing

| Plan | Price | What you get |
| :--- | :--- | :--- |
| **Free** | $0, no card | Your first 10 meetings with everything included. After that, capture, transcripts, search and export stay free. |
| **Pro** | $149 a year, or $19 a month | Everything on every meeting: the Claude Code and Cursor live link, Ask AI across older history, AI briefs. |
| **Lifetime** | $199 once for the first 100 buyers, then $249 once | Everything in Pro, no subscription. |

Every plan has a 14-day money-back guarantee. Buy from [dayglass.io/pricing](https://dayglass.io/pricing).

## Privacy

Transcripts, screen text and notes stay on your Mac in `~/.dayglass`. Audio is transcribed on the Mac and not kept by default. If you turn on a cloud model for Ask AI, your question and the relevant meeting text are sent to that model, and by default only terms on your Never-share list are withheld first. Details: [dayglass.io/privacy](https://dayglass.io/privacy).

## Other casks in this tap

- `mac-yolo-safeguards`: a macOS guardrail HUD and MCP server for AI coding agents.
