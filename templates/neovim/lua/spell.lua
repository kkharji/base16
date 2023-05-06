-- Make spell highlight groups
local make = function(c)
    return {
        -- LuaFormatter off
        {hlgroup = 'SpellBad', guifg = nil, guibg = nil, gui = 'undercurl', guisp = c.base08},
        {hlgroup = 'SpellLocal', guifg = nil, guibg = nil, gui = 'undercurl', guisp = c.base0C},
        {hlgroup = 'SpellCap', guifg = nil, guibg = nil, gui = 'undercurl', guisp = c.base0D},
        {hlgroup = 'SpellRare', guifg = nil, guibg = nil, gui = 'undercurl', guisp = c.base0E}
        -- LuaFormatter on
    }
end

return make
