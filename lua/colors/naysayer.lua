-- naysayer.nvim - a Neovim colorscheme inspired by Emacs naysayer-theme
-- Author: made by Rostislav Sobolevskiy based on Nick Aversano's Emacs theme

local colors = {
  yellow     = "#E6DB74",
  orange     = "#FD971F",
  red        = "#F92672",
  magenta    = "#FD5FF0",
  blue       = "#66D9EF",
  green      = "#A6E22E",
  cyan       = "#A1EFE4",
  violet     = "#AE81FF",

  background  = "#062625",
  gutter      = "#062625",
  selection   = "#0000ff",
  text        = "#d0b892",
  comment     = "#1D8A18",
  punctuation = "#8cde94",
  type        = "#d0b892",
  keyword     = "#ffffff",
  variable    = "#d0b892",
  function_   = "#d0b892",
  string      = "#3ad0b5",
  constant    = "#87ffde",
  macro       = "#8cde94",
  number      = "#87ffde",
  white       = "#ffffff",
  error       = "#ff0000",
  warning     = "#ffaa00",
  highlight   = "#0b3335",
  cursor_column   = "#0b5555",
  line_fg     = "#126367",
  lualine_fg  = "#12251b",
  lualine_bg  = "#d3b58e",

  dimmed_keyword = "#b0b0b0",
  dimmed_function = "#cccccc",
  dimmed_variable = "#a0b8c8",
  dimmed_string = "#2fa89e",
  dimmed_type = "#79c4a6",

  scale_yellow__1 = "#ffea3b",
  scale_yellow_0 = "#f8e3a1",
  scale_yellow_1 = "#f2cc60",
  scale_yellow_2 = "#e3b341",
  scale_yellow_3 = "#d29922",
  scale_yellow_4 = "#bb8009",
  scale_yellow_5 = "#9e6a03",
  scale_yellow_6 = "#845306",
  scale_yellow_7 = "#693e00",
  scale_yellow_8 = "#4b2900",
  scale_yellow_9 = "#341a00",
  scale_green_0 = "#acf7b6",
  scale_green_1 = "#72f088",
  scale_green_2 = "#4ae168",
  scale_green_3 = "#26cd4d",
  scale_green_4 = "#09b43a",
  scale_green_5 = "#09b43a",
  scale_green_6 = "#02a232",
  scale_green_7 = "#008c2c",
  scale_green_8 = "#007728",
  scale_green_9 = "#006222",
  scale_blue_1 = "#addcff",
  scale_blue_2 = "#91cbff",
  scale_blue_3 = "#71b7ff",
  scale_blue_4 = "#409eff",
  scale_blue_5 = "#409eff",
  scale_blue_6 = "#318bf8",
  scale_blue_7 = "#2672f3",
  scale_blue_8 = "#1e60d5",
  scale_blue_9 = "#194fb1",
  scale_orange_0 = "#ffdfb6",
  scale_orange_1 = "#ffc680",
  scale_orange_2 = "#ffa657",
  scale_orange_3 = "#f0883e",
  scale_orange_4 = "#db6d28",
  scale_orange_5 = "#bd561d",
  scale_orange_6 = "#9b4215",
  scale_orange_7 = "#762d0a",
  scale_orange_8 = "#5a1e02",
  scale_orange_9 = "#3d1300",
  scale_pink_0 = "#ffdaec",
  scale_pink_1 = "#ffbedd",
  scale_pink_2 = "#ff9bce",
  scale_pink_3 = "#f778ba",
  scale_pink_4 = "#db61a2",
  scale_pink_5 = "#bf4b8a",
  scale_pink_6 = "#9e3670",
  scale_pink_7 = "#7d2457",
  scale_pink_8 = "#5e103e",
  scale_pink_9 = "#42062a",
  scale_purple_0 = "#eddeff",
  scale_purple_1 = "#e2c5ff",
  scale_purple_2 = "#d2a8ff",
  scale_purple_3 = "#bc8cff",
  scale_purple_4 = "#a371f7",
  scale_purple_5 = "#8957e5",
  scale_purple_6 = "#6e40c9",
  scale_purple_7 = "#553098",
  scale_purple_8 = "#3c1e70",
  scale_purple_9 = "#271052",
  scale_red_0 = "#ffdcd7",
  scale_red_1 = "#ffc1ba",
  scale_red_2 = "#ffa198",
  scale_red_3 = "#ff7b72",
  scale_red_4 = "#f85149",
  scale_red_5 = "#da3633",
  scale_red_6 = "#b62324",
  scale_red_7 = "#8e1519",
  scale_red_8 = "#67060c",
  scale_red_9 = "#490202",
  scale_coral_0 = "#ffddd2",
  scale_coral_1 = "#ffc2b2",
  scale_coral_2 = "#ffa28b",
  scale_coral_3 = "#f78166",
  scale_coral_4 = "#ea6045",
  scale_coral_5 = "#cf462d",
  scale_coral_6 = "#ac3220",
  scale_coral_7 = "#872012",
  scale_coral_8 = "#640d04",
  scale_coral_9 = "#460701",
  scale_gray_0 = "#f0f6fc",
  scale_gray_1 = "#c9d1d9",
  scale_gray_2 = "#b1bac4",
  scale_gray_3 = "#8b949e",
  scale_gray_4 = "#6e7681",
  scale_gray_5 = "#484f58",
  scale_gray_6 = "#30363d",
  scale_gray_7 = "#21262d",
  scale_gray_8 = "#161b22",
  scale_gray_9 = "#0d1117",
}

vim.cmd("highlight clear")
vim.o.background = "dark"
vim.g.colors_name = "naysayer"

local set = vim.api.nvim_set_hl

-- Core UI
set(0, "Normal",           { fg = colors.text, bg = colors.background })
set(0, "Cursor",           { bg = colors.white })
set(0, "Visual",           { bg = colors.selection })
set(0, "LineNr",           { fg = colors.line_fg, bg = colors.background })
set(0, "CursorLineNr",     { fg = colors.white, bg = colors.background })
set(0, "CursorLine",       { bg = colors.highlight })
-- Vertical gutter color
set(0, "ColorColumn",      { bg = colors.cursor_column })
set(0, "VertSplit",        { fg = colors.line_fg })
set(0, "MatchParen",       { bg = colors.selection })

-- Search

--   Current match for the last search pattern
set(0, "CurSearch",        { fg = "#000000", bg = colors.scale_yellow__1, })

--   Other occurences
set(0, "Search",           { fg = "#333333", bg = colors.scale_yellow_3 })

-- Diff
--   - Fugitive stuff 
set(0, "diffRemoved",      { bg = colors.scale_red_9, fg = "#FFC0B9" })
set(0, "diffAdded",        { bg = colors.scale_green_9, fg = "#EEF1F8" })
-- How hunk header is look
set(0, "diffLine",         { bg = colors.scale_pink_7, fg = "#aaaaaa" })

-- Syntax
set(0, "Comment",          { fg = colors.comment })
set(0, "String",           { fg = colors.string })
set(0, "Number",           { fg = colors.number })
set(0, "Boolean",          { fg = colors.constant })
set(0, "Constant",         { fg = colors.constant })
set(0, "Identifier",       { fg = colors.variable })
set(0, "Function",         { fg = colors.function_ })
set(0, "Statement",        { fg = colors.keyword })
set(0, "Keyword",          { fg = colors.keyword })
set(0, "Type",             { fg = colors.type })
set(0, "PreProc",          { fg = colors.macro })
set(0, "Special",          { fg = colors.orange })
set(0, "WarningMsg",       { fg = colors.warning })
set(0, "Error",            { fg = colors.error })

-- Diagnostics
set(0, "DiagnosticError",  { fg = colors.red })
set(0, "DiagnosticWarn",   { fg = colors.warning })
set(0, "DiagnosticInfo",   { fg = colors.blue })
set(0, "DiagnosticHint",   { fg = colors.cyan })

-- Rainbow delimiters (optional)
set(0, "rainbowcol1", { fg = colors.violet })
set(0, "rainbowcol2", { fg = colors.blue })
set(0, "rainbowcol3", { fg = colors.green })
set(0, "rainbowcol4", { fg = colors.yellow })
set(0, "rainbowcol5", { fg = colors.orange })
set(0, "rainbowcol6", { fg = colors.red })

-- Statusline integration
set(0, "StatusLine",        { fg = colors.lualine_fg, bg = colors.lualine_bg })
set(0, "StatusLineNC",      { fg = colors.line_fg, bg = colors.gutter })
set(0, "StatusLineAccent",        { fg = colors.scale_blue_9, bg = colors.scala_gray_9 })
set(0, "StatuslineInsertAccent",  { fg = colors.scale_yellow_0, bg = colors.background })
set(0, "StatuslineVisualAccent",  { fg = colors.lualine_fg, bg = colors.lualine_bg })
set(0, "StatusLine",              { fg = colors.lualine_fg, bg = colors.lualine_bg })

-- Treesitter highlights
set(0, "@comment",        { link = "Comment" })
set(0, "@string",         { link = "String" })
set(0, "@number",         { link = "Number" })
set(0, "@boolean",        { link = "Boolean" })
set(0, "@constant",       { link = "Constant" })
set(0, "@function",       { link = "Function" })
set(0, "@function.builtin", { link = "Function" })
set(0, "@variable",       { link = "Identifier" })
set(0, "@type",           { link = "Type" })
set(0, "@keyword",        { link = "Keyword" })
set(0, "@keyword.function", { link = "Keyword" })
set(0, "@field",          { link = "Identifier" })
set(0, "@property",       { link = "Identifier" })
set(0, "@parameter",      { link = "Identifier" })

set(0, "@lsp.type.parameter",      { underline = true })

-- Netrw
set(0, "netrwMarkFile", { link = "Search" })

return colors

