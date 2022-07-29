return function(colorscheme, config)
  local colors = colorscheme:get_colors()
  local comment_style = config:get_comments_style()
  local keywords_style = config:get_keywords_style()
  local functions_style = config:get_functions_style()

  return {
    --{{{ BASE
    Comment = { fg = colors.comment, italic = comment_style.italic, bold = comment_style.bold },
    ColorColumn = { bg = colors.bg_alt },
    Conceal = { fg = colors.blue },
    Cursor = { fg = colors.bg, bg = colors.fg },
    lCursor = { fg = colors.bg, bg = colors.fg },
    CursorIM = { fg = colors.bg, bg = colors.fg },
    CursorLine = { bg = colors.bg_alt, sp = colors.content },
    CursorColumn = { bg = colors.bg_alt },
    CursorLineNr = { fg = colors.content, bg = colors.bg_alt },
    MatchWord = { bold = true },
    MatchParen = { fg = colors.red, bg = colors.content, bold = true },
    MatchWordCur = { bold = true },
    MatchParenCur = { bold = true },
    Normal = { fg = colors.content, bg = colorscheme:is_transparent(colors.bg) },
    NormalNC = { fg = colors.content, bg = colorscheme:is_transparent(colors.bg_alt) },
    NormalFloat = { fg = colors.fg, bg = colors.bg_alt },
    Pmenu = { link = 'NormalFloat' },
    PmenuSel = { fg = colors.content, reverse = true },
    PmenuSbar = { bg = colors.bg },
    PmenuThumb = { bg = colors.blue },
    TabLine = { fg = colors.fg, bg = colors.bg_alt, sp = colors.fg },
    TabLineSel = { fg = colors.secondary, bg = colors.bg_alt, sp = colors.fg },
    TabLineFill = { fg = colors.fg, bg = colors.bg_alt, sp = colors.fg },
    FloatBorder = { fg = colors.fg, bg = colors.bg_alt, sp = colors.fg },
    SignColumn = { fg = colors.fg },
    MsgArea = { fg = colors.content, bg = colorscheme:is_transparent(colors.bg) },
    ModeMsg = { fg = colors.blue },
    MsgSeparator = { fg = colors.content, bg = colors.bg_alt },
    MoreMsg = { fg = colors.blue },
    NonText = { fg = colors.fg },
    SpellBad = { sp = colors.danger, undercurl = true },
    SpellCap = { sp = colors.violet, undercurl = true },
    SpellLocal = { sp = colors.warning, undercurl = true },
    SpellRare = { sp = colors.cyan, undercurl = true },
    WildMenu = { fg = colors.fg, bg = colors.bg_alt },
    Folded = { fg = colors.fg, bg = colors.bg_alt, sp = colors.bg },
    FoldColumn = { fg = colors.fg, bg = colors.bg_alt },
    LineNr = { fg = colors.secondary, bg = colors.bg_alt },
    Whitespace = { fg = colors.bg_alt },
    VertSplit = { fg = colors.fg, bg = colors.bg_alt },
    Visual = { bg = colors.bg_alt },
    VisualNOS = { bg = colors.bg_alt },
    DiffAdd = { fg = colors.added, sp = colors.added },
    DiffChange = { fg = colors.changed, sp = colors.changed },
    DiffDelete = { fg = colors.deleted, reverse = true },
    DiffText = { fg = colors.blue, sp = colors.blue },
    DiffAdded = { fg = colors.added },
    DiffChanged = { fg = colors.changed },
    DiffRemoved = { fg = colors.removed },
    DiffFile = { fg = colors.secondary },
    DiffIndexLine = { fg = colors.violet },
    QuickFixLine = { bg = colors.bg_alt },
    -- TermCursor = { fg = colors.bg, bg = colors.fg },
    -- TermCursorNC = { fg = colors.bg, bg = colors.fg },
    Directory = { fg = colors.blue },
    SpecialKey = { fg = colors.red, reverse = true },
    Title = { fg = colors.orange, bold = true },
    Search = { fg = colors.yellow, reverse = true },
    IncSearch = { fg = colors.orange },
    Substitute = { fg = colors.orange, reverse = true },
    Question = { fg = colors.cyan, bold = true },
    EndOfBuffer = { fg = colors.bg },

    Constant = { fg = colors.cyan },
    --       *Constant        any constant
    --        String          a string constant: "this is a string"
    --        Character       a character constant: 'c', '\n'
    --        Number          a number constant: 234, 0xff
    --        Boolean         a boolean constant: TRUE, false
    --        Float           a floating point constant: 2.3e10
    -- String = { fg = colors.cyan },
    -- Character = { fg = colors.cyan },
    -- Number = { fg = colors.cyan },
    -- Boolean = { fg = colors.cyan },
    -- Float = { fg = colors.cyan },
    Identifier = { fg = colors.blue, italic = functions_style.italic, bold = functions_style.bold },
    --       *Identifier      any variable name
    --        Function        function name (also: methods for classes)
    -- Variable = { fg = colors.blue },
    -- Function = { fg = colors.blue },

    Statement = { fg = colors.green, italic = keywords_style.italic, bold = keywords_style.bold },
    --       *Statement       any statement
    --        Conditional     if, then, else, endif, switch, etc.
    --        Repeat          for, do, while, etc.
    --        Label           case, default, etc.
    --        Operator        "sizeof", "+", "*", etc.
    --        Keyword         any other keyword
    --        Exception       try, catch, throw
    -- Conditional = { fg = colors.green },
    -- Repeat = { fg = colors.green },
    -- Label = { fg = colors.green },
    -- Operator = { fg = colors.green },
    -- Keyword = { fg = colors.green },
    -- Exception = { fg = colors.green },

    PreProc = { fg = colors.orange },
    --       *PreProc         generic Preprocessor
    --        Include         preprocessor #include
    --        Define          preprocessor #define
    --        Macro           same as Define
    --        PreCondit       preprocessor #if, #else, #endif, etc.
    -- Include = { fg = colors.orange },
    -- Define = { fg = colors.orange },
    -- Macro = { fg = colors.orange },
    -- PreCondit = { fg = colors.orange },

    Type = { fg = colors.yellow },
    --       *Type            int, long, char, etc.
    --        StorageClass    static, register, volatile, etc.
    --        Structure       struct, union, enum, etc.
    --        Typedef         A typedef
    -- StorageClass = { fg = colors.yellow },
    -- Structure = { fg = colors.yellow },
    -- Typedef = { fg = colors.yellow },

    Special = { fg = colors.red },
    --       *Special         any special symbol
    --        SpecialChar     special character in a constant
    --        Tag             you can use CTRL-] on this
    --        Delimiter       character that needs attention
    --        SpecialComment  special things inside a comment
    --        Debug           debugging statements
    -- SpecialChar = { fg = colors.red },
    -- Tag = { fg = colors.red },
    -- Delimiter = { fg = colors.red },
    -- SpecialComment = { fg = colors.red },
    -- Debug = { fg = colors.red },

    Underlined = { fg = colors.violet, underline = true },
    Bold = { bold = true },
    Italic = { italic = true },
    Ignore = { fg = colors.cyan, bg = colors.bg_alt, bold = true },
    Todo = { fg = colors.red, bg = colors.bg_alt, bold = true },
    Error = { fg = colors.danger, bg = colors.bg_alt, bold = true },
    ErrorMsg = { fg = colors.danger, reverse = true },
    WarningMsg = { fg = colors.warning, bold = true },
    --}}}

    --{{{ TREESITTER - VSCODE LOOK
    TSVariable = { fg = colors.blue },
    TSNumber = { fg = colors.magenta },
    TSInclude = { fg = colors.green },
    TSKeyword = { fg = colors.content, italic = keywords_style.italic, bold = keywords_style.bold },
    TSKeywordFunction = { fg = colors.content, italic = keywords_style.italic, bold = keywords_style.bold },
    TSKeywordReturn = { fg = colors.green },
    TSTag = { fg = colors.blue },
    TSTagDelimiter = { fg = colors.secondary },
    TSTagAttribute = { fg = colors.content },
    TSTitle = { fg = colors.content },
    TSText = { fg = colors.content },
    TSPunctDelimiter = { fg = colors.content },
    TSPunctBracket = { fg = colors.content },
    TSParameter = { fg = colors.secondary },
    TSURI = { fg = colors.cyan, underline = true },
    TSConstructor = { fg = colors.blue },
    TSType = { fg = colors.blue },
    TSTypeBuiltin = { fg = colors.green },
    TSField = { fg = colors.green },
    TSProperty = { fg = colors.green },
    --}}}

    --{{{ DIAGNOSTIC
    DiagnosticError = { fg = colors.danger },
    DiagnosticWarn = { fg = colors.warning },
    DiagnosticInfo = { fg = colors.info },
    DiagnosticHint = { fg = colors.info },

    DiagnosticVirtualTextError = { fg = colors.danger },
    DiagnosticVirtualTextWarn = { fg = colors.warning },
    DiagnosticVirtualTextInfo = { fg = colors.info },
    DiagnosticVirtualTextHint = { fg = colors.hint },

    DiagnosticUnderlineError = { undercurl = true, sp = colors.danger },
    DiagnosticUnderlineWarn = { undercurl = true, sp = colors.warning },
    DiagnosticUnderlineInfo = { undercurl = true, sp = colors.info },
    DiagnosticUnderlineHint = { undercurl = true, sp = colors.hint },
    --}}}

    --{{{ LSPSAGA
    -- code action
    LspSagaCodeActionTitle = { fg = colors.primary, bold = true },
    LspSagaCodeActionBorder = { fg = colors.primary },
    LspSagaCodeActionTrunCateLine = { link = 'LspSagaCodeActionBorder' },
    LspSagaCodeActionContent = { fg = colors.content, bold = true },

    --{{{ finder
    LspSagaLspFinderBorder = { fg = colors.primary },
    LspSagaAutoPreview = { fg = colors.primary },
    LspSagaFinderSelection = { fg = colors.yellow, bold = true },
    TargetFileName = { link = 'Comment' },

    DefinitionsIcon = { fg = colors.yellow },
    Definitions = { fg = colors.primary, bold = true, reverse = true },
    ReferencesIcon = { fg = colors.yellow },
    References = { fg = colors.primary, bold = true, reverse = true },
    LSFinderBarSepStart = { fg = colors.bg_alt },
    LSFinderBarSepEnd = { fg = colors.bg_alt },
    LSFinderBarFind = { fg = colors.primary, bg = colors.bg_alt, bold = true },
    LSFinderBarParam = { fg = colors.primary, bg = colors.bg_alt, bold = true },
    --}}}

    -- definition
    LspSagaDefPreviewBorder = { fg = colors.primary },

    -- hover
    LspSagaHoverBorder = { fg = colors.primary },
    LspSagaHoverTrunCateLine = { link = 'LspSagaHoverBorder' },

    -- rename
    LspSagaRenameBorder = { fg = colors.primary },
    LspSagaRenameMatch = { link = 'Search' },

    --{{{ diagnostic
    LspSagaDiagnosticError = { link = 'DiagnosticError' },
    LspSagaDiagnosticWarn = { link = 'DiagnosticWarn' },
    LspSagaDiagnosticInfo = { link = 'DiagnosticInfo' },
    LspSagaDiagnosticHint = { link = 'DiagnosticHint' },
    LspSagaErrorTrunCateLine = { link = 'DiagnosticError' },
    LspSagaWarnTrunCateLine = { link = 'DiagnosticWarn' },
    LspSagaInfoTrunCateLine = { link = 'DiagnosticInfo' },
    LspSagaHintTrunCateLine = { link = 'DiagnosticHint' },
    --}}}
    --}}}

    --{{{ CMP KIND
    CmpItemAbbrDeprecated = { fg = colors.secondary, strikethrough = true },
    CmpItemAbbrMatch = { fg = colors.yellow, reverse = true },
    CmpItemAbbrMatchFuzzy = { fg = colors.yellow, reverse = true },
    CmpItemKindFunction = { fg = colors.primary },
    CmpItemKindMethod = { fg = colors.primary },
    CmpItemKindConstructor = { fg = colors.primary },
    CmpItemKindClass = { fg = colors.primary },
    CmpItemKindEnum = { fg = colors.primary },
    CmpItemKindEvent = { fg = colors.yellow },
    CmpItemKindInterface = { fg = colors.primary },
    CmpItemKindStruct = { fg = colors.primary },
    CmpItemKindVariable = { fg = colors.violet },
    CmpItemKindField = { fg = colors.violet },
    CmpItemKindProperty = { fg = colors.violet },
    CmpItemKindEnumMember = { fg = colors.orange },
    CmpItemKindConstant = { fg = colors.orange },
    CmpItemKindKeyword = { fg = colors.purple },
    CmpItemKindModule = { fg = colors.primary },
    CmpItemKindValue = { fg = colors.fg },
    CmpItemKindUnit = { fg = colors.fg },
    CmpItemKindText = { fg = colors.fg },
    CmpItemKindSnippet = { fg = colors.fg },
    CmpItemKindFile = { fg = colors.fg },
    CmpItemKindFolder = { fg = colors.fg },
    CmpItemKindColor = { fg = colors.fg },
    CmpItemKindReference = { fg = colors.fg },
    CmpItemKindOperator = { fg = colors.fg },
    CmpItemKindTypeParameter = { fg = colors.violet },
    --}}}

    --{{{ MARKDOWN
    markdownH1 = { fg = colors.blue },
    markdownH2 = { fg = colors.blue },
    markdownH3 = { fg = colors.blue },
    markdownH4 = { fg = colors.blue },
    markdownH5 = { fg = colors.blue },
    markdownH6 = { fg = colors.blue },
    markdownHeadingDelimiter = { fg = colors.blue },
    markdownHeadingRule = { fg = colors.blue },
    markdownBlockquote = { fg = colors.green },
    markdownBold = { fg = colors.magenta, bold = true },
    markdownItalic = { fg = colors.magenta, italic = true },
    markdownCode = { fg = colors.violet },
    markdownCodeBlock = { fg = colors.violet },
    markdownCodeDelimiter = { fg = colors.blue },
    markdownLinkDelimiter = { fg = colors.blue },
    markdownLinkText = { fg = colors.cyan },
    markdownListMarker = { fg = colors.yellow },
    markdownOrderedListMarker = { fg = colors.yellow },
    markdownRule = { fg = colors.yellow },
    markdownUrl = { fg = colors.blue, underline = true },
    --}}}

    --{{{ NVIM-TREE
    NvimTreeNormalNC = { link = 'NormalNC' },
    NvimTreeVertSplit = { fg = colors.bg },

    NvimTreeFolderIcon = { fg = colors.blue },
    NvimTreeFolderName = { fg = colors.fg },
    NvimTreeOpenedFolderName = { fg = colors.blue },
    NvimTreeRootFolder = { fg = colors.blue },

    NvimTreeLspDiagnosticsError = { fg = colors.danger },
    NvimTreeLspDiagnosticsWarning = { fg = colors.warning },
    NvimTreeLspDiagnosticsInformation = { fg = colors.info },

    NvimTreeGitStaged = { fg = colors.added },
    NvimTreeGitNew = { fg = colors.added },
    NvimTreeGitDeleted = { fg = colors.deleted },
    --}}}

    -- {{{ NEO-TREE
    NeoTreeDirectoryName = { fg = colors.fg },
    NeoTreeDirectoryIcon = { fg = colors.blue },
    NeoTreeRootName = { fg = colors.blue },
    -- }}}

    --{{{ TELESCOPE
    TelescopePreviewTitle = { fg = colors.bg, bg = colors.blue },
    TelescopeResultsTitle = { fg = colors.bg, bg = colors.blue },
    TelescopePromptTitle = { fg = colors.bg, bg = colors.blue },

    TelescopeSelection = { fg = colors.yellow },
    TelescopeMatching = { fg = colors.yellow, reverse = true },
    --}}}

    --{{{ DASHBOARD
    DashboardHeader = { fg = colors.primary },
    DashboardCenter = { fg = colors.fg },
    DashboardFooter = { fg = colors.violet },
    --}}}

    --{{{ GIT
    SignAdd = { fg = colors.added },
    SignChange = { fg = colors.changed },
    SignDelete = { fg = colors.deleted },
    GitSignsAdd = { fg = colors.added },
    GitSignsChange = { fg = colors.changed },
    GitSignsDelete = { fg = colors.deleted },
    GitGutterAdd = { fg = colors.added },
    GitGutterChange = { fg = colors.changed },
    GitGutterDelete = { fg = colors.deleted },
    --}}}

    --{{{ WHICH KEY
    WhichKey = { fg = colors.blue },
    WhichKeySeperator = { fg = colors.blue },
    WhichKeyGroup = { fg = colors.orange },
    WhichKeyDesc = { fg = colors.fg },
    WhichKeyFloat = { bg = colors.bg_alt },
    --}}}

    --{{{ INDENT BLANKLINE
    IndentBlanklineContextChar = { fg = colors.cyan },
    IndentBlanklineChar = { fg = colors.fg },
    IndentBlanklineSpaceChar = { fg = colors.cyan },
    --}}}
  }
end