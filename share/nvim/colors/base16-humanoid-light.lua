-- vim:filetype=lua
-- base16.lua (http//github.com/tami5/base16.lua)
-- based on base16-vim (http//github.com/chriskempson/base16-vim)
-- Humanoid light scheme by Thomas (tasmo) Friese
-- stylua: ignore start
local util = require'base16_util'

--- Set color name
vim.g.colors_name ='base16-humanoid-light'

local b0 = '#f8f8f2'
local b1 = '#efefe9'
local b2 = '#deded8'
local b3 = '#c0c0bd'
local b4 = '#60615d'
local b5 = '#232629'
local b6 = '#2f3337'
local b7 = '#070708'
local b8 = '#b0151a'
local b9 = '#ff3d00'
local ba = '#ffb627'
local bb = '#388e3c'
local bc = '#008e8e'
local bd = '#0082c9'
local be = '#700f98'

vim.g.base16_colors = {
  bg            = '#f8f8f2',
  bg_dark       = '#efefe9',
  bg_highlight  = '#deded8',
  comment       = '#c0c0bd',
  fg_dark       = '#60615d',
  fg            = '#232629',
  fg_gutter     = '#2f3337',
  fg_light      = '#070708',  -- TODO: this doesn't make sesne

  red           = '#b0151a',
  orange        = '#ff3d00',
  yellow        = '#ffb627',
  green         = '#388e3c',
  cyan          = '#008e8e',
  blue          = '#0082c9',
  purple        = '#700f98',
  magenta       = '#700f98'
}

-- local custom = {}
-- colors.gitSigns = {
--   add = util.brighten(colors.gitSigns.add, 0.2),
--   change = util.brighten(colors.gitSigns.change, 0.2),
--   delete = util.brighten(colors.gitSigns.delete, 0.2),
-- }

--- GUI color definitions
vim.g.base16_codes = {
  ["00"] = "f8f8f2",
  ["01"] = "efefe9",
  ["02"] = "deded8",
  ["03"] = "c0c0bd",
  ["04"] = "60615d",
  ["05"] = "232629",
  ["06"] = "2f3337",
  ["07"] = "070708",
  ["08"] = "b0151a",
  ["09"] = "ff3d00",
  ["0A"] = "ffb627",
  ["0B"] = "388e3c",
  ["0C"] = "008e8e",
  ["0D"] = "0082c9",
  ["0E"] = "700f98",
  ["0F"] = "b27701",
}

-- Neovim terminal colours
vim.g.terminal_color_0 = "#f8f8f2"
vim.g.terminal_color_1 = "#b0151a"
vim.g.terminal_color_2 = "#388e3c"
vim.g.terminal_color_3 = "#ffb627"
vim.g.terminal_color_4 = "#0082c9"
vim.g.terminal_color_5 = "#700f98"
vim.g.terminal_color_6 = "#008e8e"
vim.g.terminal_color_7 = "#232629"
vim.g.terminal_color_8 = "#c0c0bd"
vim.g.terminal_color_9 = "#b0151a"
vim.g.terminal_color_10 = "#388e3c"
vim.g.terminal_color_11 = "#ffb627"
vim.g.terminal_color_12 = "#0082c9"
vim.g.terminal_color_13 = "#700f98"
vim.g.terminal_color_14 = "#008e8e"
vim.g.terminal_color_15 = "#070708"

if vim.o.background == "light" then
  vim.g.terminal_color_background = "#232629"
  vim.g.terminal_color_foreground = "#388e3c"
else
  vim.g.terminal_color_background = "#f8f8f2"
  vim.g.terminal_color_foreground = "#700f98"
end

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
HI.StatusLine             = { fg = "04", bg = "01", attr = "bold" }
HI.StatusLineNC           = { fg = "05", bg = "01", attr = "bold" }
HI.VertSplit              = { fg = "02", bg = "00", attr = "none"}
HI.ColorColumn            = { bg = "01", attr = "none" }
HI.CursorColumn           = { bg = "01", attr = "none" }
HI.CursorLine             = { bg = "01", attr = "none" }
HI.CursorLineNr           = { fg = "03", bg = "01", attr = "none" }
HI.QuickFixLine           = { bg = "01", attr = "none" }
HI.Pmenu                  = { fg = "05", bg = "00" }
HI.PmenuSel               = { bg = "02" }
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
HI.ErrorHighlight         = { fg = "00", bg = "08", attr = "underline", sp = "08" }
HI.WarningHighlight       = { fg = "00", bg = "09", attr = "underline", sp = "09" }
HI.InfoHighlight          = { fg = "00", bg = "0D", attr = "underline", sp = "0D" }
HI.HintHighlight          = { fg = "00", bg = "0C", attr = "underline", sp = "0C" }
HI.SpellBad               = { fg = "05", attr = "underline" }
HI.SpellLocal             = { fg = "00", bg = "0C", attr = "undercurl", sp = "0C" }
HI.SpellCap               = { fg = "00", bg = "0D", attr = "undercurl", sp = "0D" }
HI.SpellRare              = { fg = "00", bg = "0E", attr = "undercurl", sp = "0E" }
HI.ReferenceText          = { bg = "02" }
HI.ReferenceRead          = { bg = "02" }
HI.ReferenceWrite         = { bg = "02" }
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
-- TODO: Make Italics configureable
HI.TSDefinition           = { bg = "03" }
HI.TSDefinitionUsage      = { bg = "02", attr = "none" }
HI.TSKeyword              = { fg = "0E", --[[ attr = "italic" --]] }
HI.TSConstBuiltin         = { fg = "09", --[[ attr = 'italic' --]] }
HI.TSField                = { fg = "0B" } -- For fields.
HI.TSLabel                = { fg = "0D" }
HI.TSKeywordFunction      = { fg = "0E" }
HI.TSVariable             = {}
HI.TSParameter            = { fg = "0A" }
HI.TSTextReference        = { fg = "0C" }
HI.TSConstructor          = { fg = "0E" }
HI.TSVariableBuiltin      = { fg = "09", --[[ attr = 'italic' --]] }
HI.TSConstant             = { fg = "0E", attr = "none" }
HI.TSPunctBracket         = { fg = "03", attr = "bold" }
HI.TSParameter            = { fg = "05" }
HI.TSKeyword              = { fg = "0E" }
HI.TSType                 = { fg = "0C" }
HI.TSConstant             = { fg = "0E" }
HI.TSProperty             = { fg = '0A' }
HI.LINK.TSComment         = "Comment"
-- Parans ---------------------------------------------------------------------
HI.clojureParen            = { fg = "03", attr = "bold" }
HI.NvimNestingParenthesis  = { fg = "03", attr = "bold" }
HI.FennelParen             = { fg = "03", attr = "bold" }
HI.JanetParen              = { fg = "03", attr = "bold" }
-- Java highlighting ----------------------------------------------------------
HI.javaOperator           = { fg = "0D" }
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
HI.DiagnosticWarn           = { fg = "09" }
HI.DiagnosticInfo           = { fg = "04" }
HI.DiagnosticHint           = { fg = "04" }
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
HI.LINK.DiagnosticVirtualTextError   = "ErrorSign"
HI.LINK.DiagnosticVirtualTextWarn    = "WarningSign"
HI.LINK.DiagnosticVirtualTextInfo    = "InfoSign"
HI.LINK.DiagnosticVirtualTextHint    = "HintSign"
HI.LINK.DiagnosticFloatingError      = "ErrorFloat"
HI.LINK.DiagnosticFloatingWarn       = "WarningFloat"
HI.LINK.DiagnosticFloatingInfo       = "InfoFloat"
HI.LINK.DiagnosticFloatingHint       = "HintFloat"
HI.LINK.DiagnosticUnderlineError     = "ErrorHighlight"
HI.LINK.DiagnosticUnderlineWarn      = "WarningHighlight"
HI.LINK.DiagnosticUnderlineInfo      = "InfoHighlight"
HI.LINK.DiagnosticUnderlineHint      = "HintHighlight"
HI.LINK.LspReferenceText             = "ReferenceText"
HI.LINK.LspReferenceRead             = "ReferenceRead"
HI.LINK.LspReferenceWrite            = "ReferenceWrite"
HI.DiagnosticDefaultError            = { fg = "08" }
HI.DiagnosticDefaultWarn             = { fg = "09" }
HI.DiagnosticDefaultInfo             = { fg = "04" }
HI.DiagnosticDefaultHint             = { fg = "04" }
HI.DiagnosticVirtualTextHint         = { fg = "04" }

-- GitGutter/GitSings highlighting -----------------------------------------------------
HI.LINK.GitGutterAdd                     = "GitAddSign"
HI.LINK.GitGutterChange                  = "GitChangeSign"
HI.LINK.GitGutterDelete                  = "GitDeleteSign"
HI.LINK.GitGutterChangeDelete            = "GitChangeDeleteSign"

HI.LINK.GitGutterAdd                     = "GitAddSign"
HI.LINK.GitSignsChange                   = "GitChangeSign"
HI.LINK.GitSignsDelete                   = "GitDeleteSign"

-- stylua: ignore end
