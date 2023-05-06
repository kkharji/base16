-- bradcush/base16-nvim (https://github.com/bradcush/base16-nvim)
-- by Bradley Cushing (https://github.com/bradcush)
-- pinky scheme by Benjamin (https://github.com/b3nj5m1n)
-- Based on existing work with references below
-- base16-vim (https://github.com/chriskempson/base16-vim)
-- by Chris Kempson (http://chriskempson.com)
-- RRethy/nvim-base16 (https://github.com/RRethy/nvim-base16)
-- by Adam P. Regasz-Rethy (https://github.com/RRethy)
-- Base16 color variables
local colors = {
    base00 = "#171517",
    base01 = "#1b181b",
    base02 = "#1d1b1d",
    base03 = "#383338",
    base04 = "#e7dbdb",
    base05 = "#f5f5f5",
    base06 = "#ffffff",
    base07 = "#f7f3f7",
    base08 = "#ffa600",
    base09 = "#00ff66",
    base0A = "#20df6c",
    base0B = "#ff0066",
    base0C = "#6600ff",
    base0D = "#00ffff",
    base0E = "#007fff",
    base0F = "#df206c"
}

-- Highlighting for indiividual groups
local hi = function(args)
    local hlgroup = args.hlgroup
    local guifg = args.guifg
    local guibg = args.guibg
    local gui = args.gui
    local guisp = args.guisp
    local cmd = {'hi', hlgroup}
    if guifg then table.insert(cmd, 'guifg=' .. guifg) end
    if guibg then table.insert(cmd, 'guibg=' .. guibg) end
    if gui then table.insert(cmd, 'gui=' .. gui) end
    if guisp then table.insert(cmd, 'guisp=' .. guisp) end
    vim.cmd(table.concat(cmd, ' '))
end

-- Set specified highlight groups
local setup = function(collections)
    -- Setting highlighting and syntax
    vim.cmd('highlight clear')
    vim.cmd('syntax reset')
    vim.g.colors_name = "base16-pinky"

    -- Loop through highlighting collections
    for _, collection in pairs(collections) do
        for _, group in ipairs(collection) do hi(group) end
    end

    -- Built-in terminal
    vim.g.terminal_color_0 = colors.base00
    vim.g.terminal_color_1 = colors.base08
    vim.g.terminal_color_2 = colors.base0B
    vim.g.terminal_color_3 = colors.base0A
    vim.g.terminal_color_4 = colors.base0D
    vim.g.terminal_color_5 = colors.base0E
    vim.g.terminal_color_6 = colors.base0C
    vim.g.terminal_color_7 = colors.base05
    vim.g.terminal_color_8 = colors.base03
    vim.g.terminal_color_9 = colors.base08
    vim.g.terminal_color_10 = colors.base0B
    vim.g.terminal_color_11 = colors.base0A
    vim.g.terminal_color_12 = colors.base0D
    vim.g.terminal_color_13 = colors.base0E
    vim.g.terminal_color_14 = colors.base0C
    vim.g.terminal_color_15 = colors.base07
end

-- Highlight specified groups
local makeVimCollection = require('vim')
local makeStandardCollection = require('standard')
local makeDiffCollection = require('diff')
local makeGitCollection = require('git')
local makeSpellCollection = require('spell')
local makeNeovimCollection = require('neovim')
local makeUserCollection = require('user')
local makeLspCollection = require('lsp')
local makeTreesitterCollection = require('treesitter')
setup({
    vim = makeVimCollection(colors),
    standard = makeStandardCollection(colors),
    diff = makeDiffCollection(colors),
    git = makeGitCollection(colors),
    spell = makeSpellCollection(colors),
    neovim = makeNeovimCollection(colors),
    user = makeUserCollection(colors),
    lsp = makeLspCollection(colors),
    treesitter = makeTreesitterCollection(colors)
})
