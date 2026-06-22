# Run in Terminal - PopClip Extension

A [PopClip](https://www.popclip.app) extension that sends selected text to the macOS Terminal app as a command.

## What it does

Select any shell command, click the terminal icon in PopClip, and the extension will:

- Run the command in a **new Terminal window**
- If Terminal is not already running, it launches it first, waits briefly to initialize, then runs the command

## Requirements

- [PopClip](https://www.popclip.app)
- macOS Terminal (built-in, no installation needed)

## Installation

1. Clone or download this repo
2. Rename the folder to `Terminal.popclipext` (must end in `.popclipext`)
3. Double-click the folder - PopClip will prompt you to install it

## Files

| File | Purpose |
|------|---------|
| `Config.yaml` | Extension metadata and action definition |
| `run.sh` | Shell script that opens Terminal and runs the command via AppleScript |

## How it works

PopClip sets the $POPCLIP_TEXT environment variable to whatever text you have selected. run.sh reads that and uses AppleScript to tell Terminal to open a new window and execute the command.

Terminal's `do script` always opens a new window and runs the command immediately. The script checks whether Terminal has any open windows first. If there are none, it activates the app, waits 0.5s, then sends the command.

## Also see

- [iTerm-PopClip-extension](https://github.com/Syntax-P/iTerm-PopClip-extension) - same extension for iTerm2

## License

MIT