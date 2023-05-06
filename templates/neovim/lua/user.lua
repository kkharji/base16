-- Make user highlight groups
local make = function(c)
    return {
        -- LuaFormatter off
        {hlgroup = 'User1', guifg = c.base08, guibg = c.base02, gui = 'none', guisp = nil},
        {hlgroup = 'User2', guifg = c.base0E, guibg = c.base02, gui = 'none', guisp = nil},
        {hlgroup = 'User3', guifg = c.base05, guibg = c.base02, gui = 'none', guisp = nil},
        {hlgroup = 'User4', guifg = c.base0C, guibg = c.base02, gui = 'none', guisp = nil},
        {hlgroup = 'User5', guifg = c.base01, guibg = c.base02, gui = 'none', guisp = nil},
        {hlgroup = 'User6', guifg = c.base05, guibg = c.base02, gui = 'none', guisp = nil},
        {hlgroup = 'User7', guifg = c.base05, guibg = c.base02, gui = 'none', guisp = nil},
        {hlgroup = 'User8', guifg = c.base00, guibg = c.base02, gui = 'none', guisp = nil},
        {hlgroup = 'User9', guifg = c.base00, guibg = c.base02, gui = 'none', guisp = nil}
        -- LuaFormatter on
    }
end

return make
