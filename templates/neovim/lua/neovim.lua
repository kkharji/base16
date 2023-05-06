-- Make Neovim highlight groups
local make = function(c)
    return {
        -- LuaFormatter off
        {hlgroup = 'NvimInternalError', guifg = c.base00, guibg = c.base08, gui = 'none', guisp = nil},
        {hlgroup = 'NormalFloat', guifg = c.base05, guibg = c.base00, gui = nil, guisp = nil},
        {hlgroup = 'FloatBorder', guifg = c.base05, guibg = c.base00, gui = nil, guisp = nil},
        {hlgroup = 'NormalNC', guifg = c.base05, guibg = c.base00, gui = nil, guisp = nil},
        {hlgroup = 'TermCursor', guifg = c.base00, guibg = c.base05, gui = 'none', guisp = nil},
        {hlgroup = 'TermCursorNC', guifg = c.base00, guibg = c.base05, gui = nil, guisp = nil}
        -- LuaFormatter on
    }
end

return make
