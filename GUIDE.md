# NeoVim Configuration Guide

## Overview
This NeoVim configuration uses LazyVim as the plugin manager with a minimal setup focused on development productivity.

## Key Bindings

### Register Popup
- `"` (double quote, normal/visual): Open register popup (registers.nvim)
- `Ctrl+R` (insert): Open register popup (registers.nvim)

### Leader Keys
- **Global Leader**: `Space`
- **Local Leader**: `\` (Backslash)

### Navigation
- `Ctrl+h/j/k/l`: Move between windows
- `j/k`: Smart line movement (visual lines when wrapped)

### Markdown & Obsidian Navigation
- `gf`: Follow markdown links and Obsidian wikilinks
- `Enter`: Follow link under cursor (follow-md-links)
- `Ctrl+o`: Go back to previous location
- `Ctrl+i`: Go forward in jump list

### Obsidian Notes
- `<leader>on`: Create new note
- `<leader>oo`: Open note
- `<leader>os`: Search notes
- `<leader>oq`: Quick switch notes
- `<leader>of`: Follow link
- `<leader>ob`: Show backlinks
- `<leader>or`: Rename note
- `<leader>ot`: Show tags
- `<leader>ol`: Show links
- `<leader>ow`: Switch workspace
- `<leader>od`: Open daily notes
- `<leader>oD`: Open today's note
- `<leader>oy`: Open yesterday's note
- `<leader>oT`: Open tomorrow's note
- `<leader>oi`: Paste image
- `<leader>oL`: Create link to new note (normal/visual)
- `<leader>oe`: Extract note (normal/visual)
- `<leader>oN`: Insert template

### Buffer Management
- `<leader>bn`: Next buffer
- `<leader>bp`: Previous buffer

### File Operations
- `Ctrl+s`: Save file
- `ESC ESC`: Clear search highlighting
- `<leader>e`: Toggle file explorer

### File Explorer (nvim-tree)
- `Enter/o`: Open file
- `v`: Open file in vertical split
- `s`: Open file in horizontal split

### Debug (DAP)
- `<leader>db`: Toggle breakpoint
- `<leader>dc`: Continue/Start debugging
- `<leader>di`: Step into
- `<leader>do`: Step over
- `<leader>dO`: Step out
- `<leader>dt`: Terminate debugging

**To start Java debugging:**
1. Start Java app with debug mode: `java -agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5005 YourApp`
2. Set breakpoints in Neovim with `<leader>db`
3. Attach debugger with `<leader>dc`

**Debug command examples:**
- Single class: `java -agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5005 HelloWorld`
- JAR file: `java -agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5005 -jar myapp.jar`
- With classpath: `java -cp "lib/*:." -agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5005 com.example.Main`

### LSP (Language Server Protocol)
- `gd`: Go to definition
- `gr`: Go to references
- `K`: Show hover documentation
- `<leader>ca`: Code actions
- `<leader>rn`: Rename symbol

### Completion
- `Tab`: Next completion item / expand snippet
- `Ctrl+Space`: Trigger completion
- `Enter`: Confirm selection
- `Ctrl+e`: Abort completion

### Fuzzy Finder (telescope)
- `<leader>ff`: Find files
- `<leader>fg`: Live grep (search in files)
- `<leader>fb`: Find buffers
- `<leader>fh`: Help tags

### Git (gitsigns)
- `]c`: Next hunk
- `[c`: Previous hunk
- `<leader>hs`: Stage hunk
- `<leader>hr`: Reset hunk
- `<leader>hS`: Stage buffer
- `<leader>hu`: Undo stage hunk
- `<leader>hR`: Reset buffer
- `<leader>hp`: Preview hunk
- `<leader>hb`: Blame line
- `<leader>hd`: Diff this

### Git History (fugitive)
- `<leader>gs`: Git status
- `<leader>gl`: Git log (oneline)
- `<leader>gL`: Git log (detailed)
- `<leader>gb`: Git blame
- `<leader>gf`: File history

### Utilities
- `<leader>u`: Toggle undotree

### Spell Checking
- `<leader>sp`: Toggle spell check
- `]s`: Next misspelled word
- `[s`: Previous misspelled word
- `z=`: Show spelling suggestions
- `zg`: Add word to dictionary
- `zw`: Mark word as wrong

## Configuration Structure

```
~/.config/nvim/
├── init.lua                    # Main entry point
├── lua/
│   ├── config/
│   │   ├── options.lua         # Editor options
│   │   ├── keymaps.lua         # Key mappings
│   │   ├── autocmds.lua        # Auto commands (markdown wrapping)
│   │   └── lazy.lua            # Plugin manager setup
│   └── plugins/
│       ├── colorscheme.lua     # Tokyo Night theme
│       ├── treesitter.lua      # Syntax highlighting
│       ├── lsp.lua             # Language servers
│       ├── completion.lua      # Auto-completion
│       ├── fzf.lua             # Fuzzy finder
│       ├── git.lua             # Git integration
│       ├── undotree.lua        # Undo history
│       ├── nvim-tree.lua       # File explorer
│       ├── dap.lua             # Debug adapter protocol
│       └── render-markdown.lua # Markdown rendering
```

## Editor Settings

### Tabs and Indentation
- Tab width: 2 spaces
- Expand tabs: Enabled
- Auto-indent: Enabled

### Clipboard
- System clipboard integration via `unnamedplus`

### UI Features
- Line numbers: Enabled (relative)
- Sign column: Always visible
- Terminal colors: Enabled
- Persistent undo: Enabled

## Language Support

### Syntax Highlighting (Treesitter)
- Markdown
- Markdown inline (code blocks)
- Lua
- Java
- Bash

### Language Servers (LSP)
- **Lua**: `lua_ls` with Neovim-specific configuration
- **Java**: `jdtls` (Eclipse JDT Language Server)

### Auto-completion
- LSP-based completion
- Buffer-based completion
- Path completion
- Snippet support via LuaSnip

## Plugins Used

1. **lazy.nvim**: Plugin manager with lazy loading
2. **tokyonight.nvim**: Color scheme
3. **nvim-treesitter**: Syntax highlighting and parsing
4. **nvim-lspconfig**: LSP client configuration
5. **mason.nvim**: LSP server installer
6. **nvim-cmp**: Completion engine
7. **LuaSnip**: Snippet engine
8. **telescope.nvim**: Fuzzy finder for files, buffers, and more
9. **gitsigns.nvim**: Git integration with hunk navigation and staging
10. **vim-fugitive**: Git history navigation and repository management
11. **undotree**: Undo history visualization
12. **nvim-tree.lua**: File explorer with tree view
13. **nvim-dap**: Debug adapter protocol with Java support and UI
14. **registers.nvim**: Popup for register selection (" in normal/visual, Ctrl+R in insert)
15. **render-markdown.lua**: Markdown rendering
16. **obsidian.nvim**: Obsidian vault integration with wikilink navigation
17. **follow-md-links.nvim**: Enhanced markdown link following

## First Run
On first startup, LazyVim will automatically:
1. Install itself
2. Download and install all configured plugins
3. Install language servers for Java and Lua
4. Set up syntax highlighting for specified languages

## Customization
To add more languages or plugins, modify the respective files in `lua/plugins/`. The configuration follows LazyVim conventions for easy extension.

**MANDATORY RULE**: ALWAYS update this GUIDE.md with ALL configuration changes:
- ALL new keybindings in the Key Bindings section
- ALL new files in Configuration Structure
- ALL new plugins in Plugins Used section
- ALL configuration modifications and their purposes
- Keep documentation current with every change
