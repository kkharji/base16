-- Make vim editor highlight groups
local make = function(c)
    return {
        -- LuaFormatter off
        {hlgroup = 'Normal', guifg = c.base05, guibg = c.base00, gui = nil, guisp = nil},
        {hlgroup = 'Bold', guifg = nil, guibg = nil, gui = 'bold', guisp = nil},
        {hlgroup = 'Debug', guifg = c.base08, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Directory', guifg = c.base0D, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Error', guifg = c.base00, guibg = c.base08, gui = nil, guisp = nil},
        {hlgroup = 'ErrorMsg', guifg = c.base08, guibg = c.base00, gui = nil, guisp = nil},
        {hlgroup = 'Exception', guifg = c.base08, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'FoldColumn', guifg = c.base0C, guibg = c.base01, gui = nil, guisp = nil},
        {hlgroup = 'Folded', guifg = c.base03, guibg = c.base01, gui = nil, guisp = nil},
        {hlgroup = 'IncSearch', guifg = c.base01, guibg = c.base09, gui = 'none', guisp = nil},
        {hlgroup = 'Italic', guifg = nil, guibg = nil, gui = 'none', guisp = nil},
        {hlgroup = 'Macro', guifg = c.base08, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'MatchParen', guifg = nil, guibg = c.base03, gui = nil, guisp = nil},
        {hlgroup = 'ModeMsg', guifg = c.base0B, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'MoreMsg', guifg = c.base0B, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Question', guifg = c.base0D, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Search', guifg = c.base01, guibg = c.base0A, gui = nil, guisp = nil},
        {hlgroup = 'Substitute', guifg = c.base01, guibg = c.base0A, gui = 'none', guisp = nil},
        {hlgroup = 'SpecialKey', guifg = c.base03, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'TooLong', guifg = c.base08, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Underlined', guifg = c.base08, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Visual', guifg = nil, guibg = c.base02, gui = nil, guisp = nil},
        {hlgroup = 'VisualNOS', guifg = c.base08, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'WarningMsg', guifg = c.base08, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'WildMenu', guifg = c.base08, guibg = c.base0A, gui = nil, guisp = nil},
        {hlgroup = 'Title', guifg = c.base0D, guibg = nil, gui = 'none', guisp = nil},
        {hlgroup = 'Conceal', guifg = c.base0D, guibg = c.base00, gui = nil, guisp = nil},
        {hlgroup = 'Cursor', guifg = c.base00, guibg = c.base05, gui = nil, guisp = nil},
        {hlgroup = 'NonText', guifg = c.base03, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'LineNr', guifg = c.base03, guibg = c.base01, gui = nil, guisp = nil},
        {hlgroup = 'SignColumn', guifg = c.base03, guibg = c.base01, gui = nil, guisp = nil},
        {hlgroup = 'StatusLine', guifg = c.base04, guibg = c.base02, gui = 'none', guisp = nil},
        {hlgroup = 'StatusLineNC', guifg = c.base03, guibg = c.base01, gui = 'none', guisp = nil},
        {hlgroup = 'VertSplit', guifg = c.base02, guibg = c.base02, gui = 'none', guisp = nil},
        {hlgroup = 'ColorColumn', guifg = nil, guibg = c.base01, gui = 'none', guisp = nil},
        {hlgroup = 'CursorColumn', guifg = nil, guibg = c.base01, gui = 'none', guisp = nil},
        {hlgroup = 'CursorLine', guifg = nil, guibg = c.base01, gui = 'none', guisp = nil},
        {hlgroup = 'CursorLineNr', guifg = c.base04, guibg = c.base01, gui = nil, guisp = nil},
        {hlgroup = 'QuickFixLine', guifg = nil, guibg = c.base01, gui = 'none', guisp = nil},
        {hlgroup = 'PMenu', guifg = c.base05, guibg = c.base01, gui = 'none', guisp = nil},
        {hlgroup = 'PMenuSel', guifg = c.base01, guibg = c.base05, gui = nil, guisp = nil},
        {hlgroup = 'TabLine', guifg = c.base03, guibg = c.base01, gui = 'none', guisp = nil},
        {hlgroup = 'TabLineFill', guifg = c.base03, guibg = c.base01, gui = 'none', guisp = nil},
        {hlgroup = 'TabLineSel', guifg = c.base0B, guibg = c.base01, gui = 'none', guisp = nil}
        -- LuaFormatter on
    }
end

return make
