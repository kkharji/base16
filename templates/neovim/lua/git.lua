-- Make git highlight groups
local make = function(c)
    return {
        -- LuaFormatter off
        {hlgroup = 'gitcommitOverflow', guifg = c.base08, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'gitcommitSummary', guifg = c.base0B, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'gitcommitComment', guifg = c.base03, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'gitcommitUntracked', guifg = c.base03, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'gitcommitDiscarded', guifg = c.base03, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'gitcommitSelected', guifg = c.base03, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'gitcommitHeader', guifg = c.base0E, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'gitcommitSelectedType', guifg = c.base0D, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'gitcommitUnmergedType', guifg = c.base0D, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'gitcommitDiscardedType', guifg = c.base0D, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'gitcommitBranch', guifg = c.base09, guibg = nil, gui = 'bold', guisp = nil},
        {hlgroup = 'gitcommitUntrackedFile', guifg = c.base0A, guibg = nil, gui = nil, guisp = nil},
        {hlgroup = 'gitcommitUnmergedFile', guifg = c.base08, guibg = nil, gui = 'bold', guisp = nil},
        {hlgroup = 'gitcommitDiscardedFile', guifg = c.base08, guibg = nil, gui = 'bold', guisp = nil},
        {hlgroup = 'gitcommitSelectedFile', guifg = c.base0B, guibg = nil, gui = 'bold', guisp = nil}
        -- LuaFormatter on
    }
end

return make
