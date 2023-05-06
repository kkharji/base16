-- bradcush/base16-nvim (https://github.com/bradcush/base16-nvim)
-- by Bradley Cushing (https://github.com/bradcush)
-- darkmoss scheme by Gabriel Avanzi (https://github.com/avanzzzi)
-- Based on existing work with references below
-- base16-vim (https://github.com/chriskempson/base16-vim)
-- by Chris Kempson (http://chriskempson.com)
-- RRethy/nvim-base16 (https://github.com/RRethy/nvim-base16)
-- by Adam P. Regasz-Rethy (https://github.com/RRethy)
-- Base16 color variables
local colors = {
    base00 = "#171e1f",
    base01 = "#252c2d",
    base02 = "#373c3d",
    base03 = "#555e5f",
    base04 = "#818f80",
    base05 = "#c7c7a5",
    base06 = "#e3e3c8",
    base07 = "#e1eaef",
    base08 = "#ff4658",
    base09 = "#e6db74",
    base0A = "#fdb11f",
    base0B = "#499180",
    base0C = "#66d9ef",
    base0D = "#498091",
    base0E = "#9bc0c8",
    base0F = "#d27b53"
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
    vim.g.colors_name = "base16-darkmoss"

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
