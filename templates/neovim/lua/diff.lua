-- Make diff highlight groups
local make = function(c)
    return {
        -- LuaFormatter off
        {hlgroup = 'DiffAdd', guifg = c.base0B, guibg = c.base01, gui = nil, guisp = nil},
        {hlgroup = 'DiffChange', guifg = c.base03, guibg = c.base01, gui = nil, guisp = nil},
        {hlgroup = 'DiffDelete', guifg = c.base08, guibg = c.base01, gui = nil, guisp = nil},
        {hlgroup = 'DiffText', guifg = c.base0D, guibg = c.base01, gui = nil, guisp = nil},
        {hlgroup = 'DiffAdded', guifg = c.base0B, guibg = c.base01, gui = nil, guisp = nil},
        {hlgroup = 'DiffFile', guifg = c.base08, guibg = c.base00, gui = nil, guisp = nil},
        {hlgroup = 'DiffNewFile', guifg = c.base0B, guibg = c.base00, gui = nil, guisp = nil},
        {hlgroup = 'DiffLine', guifg = c.base0D, guibg = c.base00, gui = nil, guisp = nil},
        {hlgroup = 'DiffRemoved', guifg = c.base08, guibg = c.base00, gui = nil, guisp = nil}
        -- LuaFormatter on
    }
end

return make
