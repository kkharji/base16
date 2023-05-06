-- Make standard syntax highlight groups
local make = function(c)
    return {
        -- LuaFormatter off
        {hlgroup = 'Boolean', guifg = c.base09, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Character', guifg = c.base08, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Comment', guifg = c.base03, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Conditional', guifg = c.base0E, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Constant', guifg = c.base09, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Define', guifg = c.base0E, guibg = nil, gui = 'none', guisp = nil},
        {hlgroup = 'Delimiter', guifg = c.base0F, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Float', guifg = c.base09, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Function', guifg = c.base0D, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Identifier', guifg = c.base08, guibg = nil, gui = 'none', guisp = nil},
        {hlgroup = 'Include', guifg = c.base0D, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Keyword', guifg = c.base0E, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Label', guifg = c.base0A, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Number', guifg = c.base09, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Operator', guifg = c.base05, guibg = nil, gui = 'none', guisp = nil},
        {hlgroup = 'PreProc', guifg = c.base0A, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Repeat', guifg = c.base0A, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Special', guifg = c.base0C, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'SpecialChar', guifg = c.base0F, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Statement', guifg = c.base08, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'StorageClass', guifg = c.base0A, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'String', guifg = c.base0B, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Structure', guifg = c.base0E, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Tag', guifg = c.base0A, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'Todo', guifg = c.base0A, guibg = c.base01, gui = nil, guisp = nil},
        {hlgroup = 'Type', guifg = c.base0A, guibg = nil, gui = 'none', guisp = nil},
        {hlgroup = 'Typedef', guifg = c.base0A, guibg = nil, gui = nil, guisp = nil}
        -- LuaFormatter on
    }
end

return make
