-- base16.lua (http//github.com/tami5/base16.lua)
-- based on base16-vim (http//github.com/chriskempson/base16-vim)
-- Heetch Dark scheme by Geoffrey Teale (tealeg@gmail.com)
-- stylua: ignore start

--- Set color name
vim.g.colors_name ='base16-heetch'
--- GUI color definitions
vim.g.base16_codes = {
  ["00"] = "190134",
  ["01"] = "392551",
  ["02"] = "5A496E",
  ["03"] = "7B6D8B",
  ["04"] = "9C92A8",
  ["05"] = "BDB6C5",
  ["06"] = "DEDAE2",
  ["07"] = "FEFFFF",
  ["08"] = "27D9D5",
  ["09"] = "5BA2B6",
  ["0A"] = "8F6C97",
  ["0B"] = "C33678",
  ["0C"] = "F80059",
  ["0D"] = "BD0152",
  ["0E"] = "82034C",
  ["0F"] = "470546",
}
-- Neovim terminal colours
vim.g.terminal_color_0 = "#190134"
vim.g.terminal_color_1 = "#27D9D5"
vim.g.terminal_color_2 = "#C33678"
vim.g.terminal_color_3 = "#8F6C97"
vim.g.terminal_color_4 = "#BD0152"
vim.g.terminal_color_5 = "#82034C"
vim.g.terminal_color_6 = "#F80059"
vim.g.terminal_color_7 = "#BDB6C5"
vim.g.terminal_color_8 = "#7B6D8B"
vim.g.terminal_color_9 = "#27D9D5"
vim.g.terminal_color_10 = "#C33678"
vim.g.terminal_color_11 = "#8F6C97"
vim.g.terminal_color_12 = "#BD0152"
vim.g.terminal_color_13 = "#82034C"
vim.g.terminal_color_14 = "#F80059"
vim.g.terminal_color_15 = "#FEFFFF"

if vim.o.background == "light" then
  vim.g.terminal_color_background = "#BDB6C5"
  vim.g.terminal_color_foreground = "#C33678"
else
  vim.g.terminal_color_background = "#190134"
  vim.g.terminal_color_foreground = "#82034C"
end

vim.g.base16_colors = {
  bgdefault = '#190134',
  bglight   = '#392551',
  bgselect  = '#5A496E',
  comment   = '#7B6D8B',
  fgdark    = '#9C92A8',
  fgdefault = '#BDB6C5',
  fglight   = '#DEDAE2',
  fglighter = '#FEFFFF',

  red       = '#27D9D5',
  orange    = '#5BA2B6',
  yellow    = '#8F6C97',
  green     = '#C33678',
  cyan      = '#F80059',
  blue      = '#BD0152',
  violet    = '#82034C',
  magenta   = '#82034C'
}

local HI = require'base16_indexer'(vim.g.base16_codes)

vim.cmd [[
  highlight clear
  syntax reset
]]

-- Vim editor colors ----------------------------------------------------------
HI.Normal                 = { fg = "05", bg = "00" }
HI.NormalFloat            = { fg = "05", bg = "00" }
HI.Bold                   = { attr = "bold" }
HI.Debug                  = { fg = "08" }
HI.Directory              = { fg = "0D" }
HI.Error                  = { fg = "08", bg = "00" }
HI.ErrorMsg               = { fg = "08", bg = "00" }
HI.Exception              = { fg = "08" }
HI.FoldColumn             = { fg = "0C", bg = "01" }
HI.Folded                 = { fg = "03", bg = "01" }
HI.IncSearch              = { fg = "01", bg = "09", attr = "none" }
HI.Italic                 = { attr = "italic" }
HI.Macro                  = { fg = "08" }
HI.MatchParen             = { fg = "0A", bg = "00", attr = "bold" }
HI.ModeMsg                = { fg = "0B" }
HI.MoreMsg                = { fg = "0B" }
HI.Question               = { fg = "0D" }
HI.Search                 = { fg = "01", bg = "0A" }
HI.Substitute             = { fg = "01", bg = "0A", attr = "none" }
HI.SpecialKey             = { fg = "03" }
HI.TooLong                = { fg = "08" }
HI.Underlined             = { fg = "08" }
HI.Visual                 = { bg = "02" }
HI.VisualNOS              = { fg = "08" }
HI.WarningMsg             = { fg = "08" }
HI.WildMenu               = { fg = "00", bg = "05" }
HI.Title                  = { fg = "0D", attr = "bold" }
HI.Conceal                = { fg = "0D", bg = "00" }
HI.Cursor                 = { fg = "00", bg = "05", attr = "inverse" }
HI.NonText                = { fg = "03" }
HI.Whitespace             = { fg = "03" }
HI.LineNr                 = { fg = "03", bg = "00" }
HI.LineNrNC               = { fg = "03", bg = "01" }
HI.LineNrSel              = { fg = "02", bg = "00" }
HI.SignColumn             = { fg = "02", bg = "00" }
HI.SignColumnNC           = { fg = "02", bg = "01" }
HI.StatusLine             = { fg = "05", bg = "01", attr = "none", sp = "none" }
HI.StatusLineNC           = { fg = "05", bg = "01", attr = "none", sp = "none" }
HI.VertSplit              = { fg = "02", bg = "00", attr = "none"}
HI.ColorColumn            = { bg = "01", attr = "none" }
HI.CursorColumn           = { bg = "01", attr = "none" }
HI.CursorLine             = { bg = "01", attr = "none" }
HI.CursorLineNr           = { fg = "03", bg = "01", attr = "none" }
HI.QuickFixLine           = { bg = "01", attr = "none" }
HI.Pmenu                  = { fg = "05", bg = "00" }
HI.PmenuSel               = { fg = "05", bg = "02" }
HI.PmenuSbar              = { fg = "05", bg = "01" }
HI.PmenuThumb             = { fg = "03", bg = "02" }
HI.TabLine                = { fg = "03", bg = "00", attr = "none" }
HI.TabLineFill            = { fg = "01", bg = "00", attr = "none" }
HI.TabLineSel             = { fg = "05", bg = "01", attr = "none" }
-- Standard syntax highlighting -----------------------------------------------
HI.Boolean                = { fg = "09" }
HI.Character              = { fg = "08" }
HI.Comment                = { fg = "03" }
HI.Conditional            = { fg = "0E" }
HI.Constant               = { fg = "09" }
HI.Define                 = { fg = "0E", attr = "none" }
HI.Delimiter              = { fg = "08", attr = "bold" }
HI.Float                  = { fg = "09" }
HI.Function               = { fg = "0D" }
HI.Identifier             = { fg = "08", attr = "none" }
HI.Include                = { fg = "0D" }
HI.Keyword                = { fg = "0E" }
HI.Label                  = { fg = "0A" }
HI.Number                 = { fg = "09" }
HI.Operator               = { fg = "0F", attr = "none" }
HI.PreProc                = { fg = "0A" }
HI.Repeat                 = { fg = "0A" }
HI.Special                = { fg = "0C" }
HI.SpecialChar            = { fg = "0F" }
HI.Statement              = { fg = "08" }
HI.StorageClass           = { fg = "0A" }
HI.String                 = { fg = "0B" }
HI.Structure              = { fg = "0E" }
HI.Tag                    = { fg = "0A" }
HI.Todo                   = { fg = "0A", bg = "01" }
HI.Type                   = { fg = "0A", "", "0A" }
HI.Typedef                = { fg = "0A", "", "0A" }
-- Standard highlights to be used by plugins ----------------------------------
HI.GitAddSign             = { fg = "0B" }
HI.GitChangeSign          = { fg = "04" }
HI.GitDeleteSign          = { fg = "08" }
HI.GitChangeDeleteSign    = { fg = "04" }
HI.ErrorSign              = { fg = "08" }
HI.WarningSign            = { fg = "09" }
HI.InfoSign               = { fg = "0D" }
HI.HintSign               = { fg = "0C" }
HI.ErrorFloat             = { fg = "08", bg = "02" }
HI.WarningFloat           = { fg = "09", bg = "02" }
HI.InfoFloat              = { fg = "0D", bg = "02" }
HI.HintFloat              = { fg = "0C", bg = "02" }
HI.ErrorHighlight         = { fg = "00", bg = "08", attr = "underline", sp = "08", cterm = true }
HI.WarningHighlight       = { fg = "00", bg = "09", attr = "underline", sp = "09", cterm = true }
HI.InfoHighlight          = { fg = "00", bg = "0D", attr = "underline", sp = "0D", cterm = true }
HI.HintHighlight          = { fg = "00", bg = "0C", attr = "underline", sp = "0C", cterm = true }
HI.SpellBad               = { fg = "05", bg = "08", attr = "underline" }
HI.SpellLocal             = { fg = "00", bg = "0C", attr = "undercurl", sp = "0C", cterm = true }
HI.SpellCap               = { fg = "00", bg = "0D", attr = "undercurl", sp = "0D", cterm = true }
HI.SpellRare              = { fg = "00", bg = "0E", attr = "undercurl", sp = "0E", cterm = true }
HI.ReferenceText          = { fg = "01", bg = "0A" }
HI.ReferenceRead          = { fg = "01", bg = "0B" }
HI.ReferenceWrite         = { fg = "01", bg = "08" }
-- C highlighting -------------------------------------------------------------
HI.cOperator              = { fg = "0C" }
HI.cPreCondit             = { fg = "0E" }
-- C# highlighting ------------------------------------------------------------
HI.csClass                = { fg = "0A" }
HI.csAttribute            = { fg = "0A" }
HI.csModifier             = { fg = "0E" }
HI.csType                 = { fg = "08" }
HI.csUnspecifiedStatement = { fg = "0D" }
HI.csContextualStatement  = { fg = "0E" }
HI.csNewDecleration       = { fg = "08" }
HI.CocHighlightRead       = { fg = "0B", bg = "01" }
HI.CocHighlightText       = { fg = "0A", bg = "01" }
HI.CocHighlightWrite      = { fg = "08", bg = "01" }
HI.CocListMode            = { fg = "01", bg = "0B", attr = "bold" }
HI.CocListPath            = { fg = "01", bg = "0B" }
HI.CocSessionsName        = { fg = "05" }
-- CSS highlighting -----------------------------------------------------------
HI.cssBraces              = { fg = "05" }
HI.cssClassName           = { fg = "0E" }
HI.cssColor               = { fg = "0C" }
-- Diff highlighting ----------------------------------------------------------
HI.DiffAdd                = { fg = "0B", bg = "02" }
HI.DiffChange             = { fg = "05", bg = "02" }
HI.DiffDelete             = { fg = "08", bg = "02" }
HI.DiffText               = { fg = "0D", bg = "02" }
HI.DiffAdded              = { fg = "0B", bg = "00" }
HI.DiffFile               = { fg = "08", bg = "00" }
HI.DiffNewFile            = { fg = "0B", bg = "00" }
HI.DiffLine               = { fg = "0D", bg = "00" }
HI.DiffRemoved            = { fg = "08", bg = "00" }
-- Git highlighting -----------------------------------------------------------
HI.gitcommitOverflow      = { fg = "08" }
HI.gitcommitSummary       = { fg = "0B" }
HI.gitcommitComment       = { fg = "03" }
HI.gitcommitUntracked     = { fg = "03" }
HI.gitcommitDiscarded     = { fg = "03" }
HI.gitcommitSelected      = { fg = "03" }
HI.gitcommitHeader        = { fg = "0E" }
HI.gitcommitSelectedType  = { fg = "0D" }
HI.gitcommitUnmergedType  = { fg = "0D" }
HI.gitcommitDiscardedType = { fg = "0D" }
HI.gitcommitUntrackedFile = { fg = "0A" }
HI.gitcommitBranch        = { fg = "09", attr = "bold" }
HI.gitcommitUnmergedFile  = { fg = "08", attr = "bold" }
HI.gitcommitDiscardedFile = { fg = "08", attr = "bold" }
HI.gitcommitSelectedFile  = { fg = "0B", attr = "bold" }
-- HTML highlighting ----------------------------------------------------------
HI.htmlBold               = { fg = "05", attr = "bold" }
HI.htmlItalic             = { fg = "05", atrr = "italic" }
HI.htmlEndTag             = { fg = "05" }
HI.htmlTag                = { fg = "05" }
-- JavaScript highlighting ----------------------------------------------------
HI.javaScript             = { fg = "05" }
HI.javaScriptBraces       = { fg = "05" }
HI.javaScriptNumber       = { fg = "09" }
-- Mail highlighting ----------------------------------------------------------
HI.mailQuoted1            = { fg = "0A" }
HI.mailQuoted2            = { fg = "0B" }
HI.mailQuoted3            = { fg = "0E" }
HI.mailQuoted4            = { fg = "0C" }
HI.mailQuoted5            = { fg = "0D" }
HI.mailQuoted6            = { fg = "0A" }
HI.mailURL                = { fg = "0D" }
HI.mailEmail              = { fg = "0D" }
-- Markdown highlighting ------------------------------------------------------
HI.markdownCode           = { fg = "0B" }
HI.markdownError          = { fg = "05" }
HI.markdownCodeBlock      = { fg = "0B" }
HI.markdownBold           = { fg = "08", attr = "bold" }
HI.markdownBoldDelimiter  = { fg = "03" }
HI.markdownHeadingRule    = { attr = "bold" }
-- HI.markdownItalic      = { fg = "08", attr = "italic" }
HI.markdownItalicDelimiter  = { fg = "03" }
HI.markdownHeadingDelimiter = { fg = "04" }

-- NERDTree highlighting ------------------------------------------------------
HI.NERDTreeDirSlash       = { fg = "0D" }
HI.NERDTreeExecFile       = { fg = "05" }
-- PHP highlighting -----------------------------------------------------------
HI.phpMemberSelector      = { fg = "05" }
HI.phpComparison          = { fg = "05" }
HI.phpParent              = { fg = "05" }
HI.phpMethodsVar          = { fg = "0C" }
-- Python highlighting --------------------------------------------------------
HI.pythonOperator         = { fg = "0E" }
HI.pythonRepeat           = { fg = "0E" }
HI.pythonInclude          = { fg = "0E" }
HI.pythonStatement        = { fg = "0E" }
-- Ruby Highlighting ----------------------------------------------------------
HI.rubyAttribute          = { fg = "0D" }
HI.rubyConstant           = { fg = "0A" }
HI.rubyRegexp             = { fg = "0C" }
HI.rubySymbol             = { fg = "0B" }
HI.rubyStringDelimiter    = { fg = "0B" }
HI.rubyInterpolationDelimiter = { fg = "0F" }
-- SASS highlighting ----------------------------------------------------------
HI.sassidChar             = { fg = "08" }
HI.sassClassChar          = { fg = "09" }
HI.sassInclude            = { fg = "0E" }
HI.sassMixing             = { fg = "0E" }
HI.sassMixinName          = { fg = "0D" }
-- Startify highlighting ------------------------------------------------------
HI.StartifyBracket        = { fg = "03" }
HI.StartifyFile           = { fg = "07" }
HI.StartifyFooter         = { fg = "03" }
HI.StartifyHeader         = { fg = "0B" }
HI.StartifyNumber         = { fg = "09" }
HI.StartifyPath           = { fg = "03" }
HI.StartifySection        = { fg = "0E" }
HI.StartifySelect         = { fg = "0C" }
HI.StartifySlash          = { fg = "03" }
HI.StartifySpecial        = { fg = "03" }
-- Treesitter-refactor highlighting -------------------------------------------
HI.TSDefinition           = { bg = "03" }
HI.TSDefinitionUsage      = { bg = "02", attr = "none" }
HI.TSKeyword              = { fg = "0E", attr = "none" }
HI.TSConstant             = { fg = "0E", attr = "none" }
HI.TSPunctBracket         = { fg = "03", attr = "bold" }
HI.TSParameter            = { fg = "05" }
-- Parans ---------------------------------------------------------------------
HI.clojureParen            = { fg = "03", attr = "bold" }
HI.NvimNestingParenthesis  = { fg = "03", attr = "bold" }
HI.FennelParen             = { fg = "03", attr = "bold" }
HI.JanetParen              = { fg = "03", attr = "bold" }
-- Java highlighting ----------------------------------------------------------
HI.javaOperator           = { fg = "0D" }
-- Barbar ---------------------------------------------------------------------
HI.BufferCurrent            = { fg = "05", bg = "04" }
HI.BufferCurrentIndex       = { fg = "0D", bg = "04" }
HI.BufferCurrentMod         = { fg = "0A", bg = "04" }
HI.BufferCurrentSign        = { fg = "0D", bg = "04" }
HI.BufferCurrentTarget      = { fg = "08", bg = "04" }
HI.BufferVisible            = { fg = "05", bg = "01" }
HI.BufferVisibleIndex       = { fg = "0D", bg = "01" }
HI.BufferVisibleMod         = { fg = "0A", bg = "01" }
HI.BufferVisibleSign        = { fg = "0D", bg = "01" }
HI.BufferVisibleTarget      = { fg = "08", bg = "01" }
HI.BufferInactive           = { fg = "00", bg = "01" }
HI.BufferInactiveIndex      = { fg = "00", bg = "01" }
HI.BufferInactiveTarget     = { fg = "08", bg = "01" }
HI.BufferInactiveMod        = { fg = "0A", bg = "01" }
HI.BufferInactiveSign       = { fg = "0D", bg = "01" }
HI.BufferTabpage            = { fg = "0D", bg = "01" }
HI.BufferTabpages           = { bg = "00" }
HI.BufferLineSelected       = { attr = "bold" }
-- Fern Highlighting ---------------------------------------------------------
HI.FernBranchText           = { fg = '0D' }
-- Floatterm -----------------------------------------------------------------
HI.FloatermBorder           = { fg = "01", bg = "02" }
-- LspTrouble Highlighting ---------------------------------------------------
HI.LspTroubleText           = { fg = "04" }
HI.LspTroubleCount          = { fg = "0E", bg = "04" }
HI.LspTroubleNormal         = { fg = "04", bg = "00" }
-- Telescope Highlighting ----------------------------------------------------
HI.TelescopeBorder          = { fg = "02", bg = "00" }
HI.TelescopeMatching        = { fg = "08", bg = "00" }
HI.TelescopeNormal          = { fg = "05", bg = "00" }
HI.TelescopeSelection       = { fg = "07", bg = "00" }
-- LspSaga Highlighting ------------------------------------------------------
HI.DiagnosticError          = { fg = "08" }
HI.DiagnosticWarning        = { fg = "0A" }
HI.DiagnosticInformation    = { fg = "03" }
HI.DiagnosticHint           = { fg = "03" }
HI.LspFloatWinNormal        = { bg = "01" }
HI.LspFloatWinBorder        = { fg = "02" }
HI.LspSagaBorderTitle       = { fg = "0C" }
HI.LspSagaHoverBorder       = { fg = "0D" }
HI.LspSagaRenameBorder      = { fg = "0B" }
HI.LspSagaDefPreviewBorder  = { fg = "0B" }
HI.LspSagaCodeActionBorder  = { fg = "0D" }
HI.LspSagaFinderSelection   = { fg = "04" }
HI.LspSagaCodeActionTitle   = { fg = "0D" }
HI.LspSagaCodeActionContent = { fg = "0E" }
HI.ReferencesCount          = { fg = "0E" }
HI.DefinitionCount          = { fg = "0E" }
HI.DefinitionIcon           = { fg = "0D" }
HI.ReferencesIcon           = { fg = "0D" }
HI.TargetWord               = { fg = "0C" }
-- Compe Highlights --------------------------------------------------------
HI.CompeDocumentation       = { fg = "05", bg = "00" }
HI.CompeDocumentationBorder = { fg = "02", bg = "00" }
-- LSP highlighting -----------------------------------------------------------
HI.LINK.LspDiagnosticsSignError          = "ErrorSign"
HI.LINK.LspDiagnosticsSignWarning        = "WarningSign"
HI.LINK.LspDiagnosticsSignInfo           = "InfoSign"
HI.LINK.LspDiagnosticsSignHint           = "HintSign"
HI.LINK.LspDiagnosticsVirtualTextError   = "ErrorSign"
HI.LINK.LspDiagnosticsVirtualTextWarning = "WarningSign"
HI.LINK.LspDiagnosticsVirtualTextInfo    = "InfoSign"
HI.LINK.LspDiagnosticsVirtualTextHint    = "HintSign"
HI.LINK.LspDiagnosticsFloatingError      = "ErrorFloat"
HI.LINK.LspDiagnosticsFloatingWarning    = "WarningFloat"
HI.LINK.LspDiagnosticsFloatingInfo       = "InfoFloat"
HI.LINK.LspDiagnosticsFloatingHint       = "HintFloat"
HI.LINK.LspDiagnosticsUnderlineError     = "ErrorHighlight"
HI.LINK.LspDiagnosticsUnderlineWarning   = "WarningHighlight"
HI.LINK.LspDiagnosticsUnderlineInfo      = "InfoHighlight"
HI.LINK.LspDiagnosticsUnderlineHint      = "HintHighlight"
HI.LINK.LsoReferenceText                 = "ReferenceText"
HI.LINK.LsoReferenceRead                 = "ReferenceRead"
HI.LINK.LsoReferenceWrite                = "ReferenceWrite"
-- GitGutter highlighting -----------------------------------------------------
HI.LINK.GitGutterAdd                     = "GitAddSign"
HI.LINK.GitGutterChange                  = "GitChangeSign"
HI.LINK.GitGutterDelete                  = "GitDeleteSign"
HI.LINK.GitGutterChangeDelete            = "GitChangeDeleteSign"

-- stylua: ignore end
-- vim: filetype=lua
