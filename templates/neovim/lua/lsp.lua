-- Make native LSP highlight groups
local make = function(c)
    return {
        -- LuaFormatter off
        {hlgroup = 'LspReferenceText', guifg = nil, guibg = nil, gui = 'underline', guisp = c.base04},
        {hlgroup = 'LspReferenceRead', guifg = nil, guibg = nil, gui = 'underline', guisp = c.base04},
        {hlgroup = 'LspReferenceWrite', guifg = nil, guibg = nil, gui = 'underline', guisp = c.base04},
        {hlgroup = 'LspDiagnosticsDefaultError', guifg = c.base0F, guibg = nil, gui = 'none', guisp = nil},
        {hlgroup = 'LspDiagnosticsDefaultWarning', guifg = c.base0A, guibg = nil, gui = 'none', guisp = nil},
        {hlgroup = 'LspDiagnosticsDefaultInformation', guifg = c.base0D, guibg = nil, gui = 'none', guisp = nil},
        {hlgroup = 'LspDiagnosticsDefaultHint', guifg = c.base05, guibg = nil, gui = 'none', guisp = nil},
        {hlgroup = 'LspDiagnosticsUnderlineError', guifg = nil, guibg = nil, gui = 'undercurl', guisp = c.base08},
        {hlgroup = 'LspDiagnosticsUnderlineWarning', guifg = nil, guibg = nil, gui = 'undercurl', guisp = c.base0A},
        {hlgroup = 'LspDiagnosticsUnderlineInformation', guifg = nil, guibg = nil, gui = 'undercurl', guisp = c.base0D},
        {hlgroup = 'LspDiagnosticsUnderlineHint', guifg = nil, guibg = nil, gui = 'undercurl', guisp = c.base05}
        -- LuaFormatter on
    }
end

return make
