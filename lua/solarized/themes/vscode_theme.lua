local function vscode_theme(solarized, chromatic)
  local colors = solarized.colors
  local darken = chromatic.darken
  local blend = chromatic.blend

  return {
    -- Editor
    Normal = { fg = colors.fg, bg = solarized:is_transparent(colors.bg) },
    NormalNC = { link = 'Normal' },
    NormalFloat = { fg = colors.fg, bg = colors.bg_alt },
    Cursor = { fg = colors.bg, bg = colors.fg },
    lCursor = { link = 'Cursor' },
    CursorIM = { fg = colors.bg, bg = colors.fg },
    CursorLineNr = { bg = colors.bg_alt, sp = colors.content },
    CursorLine = { bg = colors.bg_alt, sp = colors.content },
    TermCursor = { fg = colors.bg, bg = colors.fg },
    TermCursorNC = { fg = colors.bg, bg = colors.fg },
    DiffText = { fg = colors.blue, sp = colors.blue, reverse = true },
    DiffAdd = { fg = colors.added, sp = colors.added, reverse = true },
    DiffChange = { fg = colors.changed, sp = colors.changed, reverse = true },
    DiffDelete = { fg = colors.deleted, reverse = true },
    Pmenu = { fg = colors.fg, bg = colors.bg_alt, bold = true },
    PmenuSel = { fg = colors.content, bg = colors.bg_alt_invert, reverse = true, bold = true },
    PmenuSbar = { fg = colors.bg_alt_invert, bg = colors.fg, reverse = true, bold = true },
    PmenuThumb = { fg = colors.blue, bg = colors.bg, reverse = true, bold = true },
    WildMenu = { fg = colors.bg_alt_invert, bg = colors.bg_alt, reverse = true, bold = true },
    MsgArea = { fg = colors.content, bg = solarized:is_transparent(colors.bg) },
    ModeMsg = { fg = colors.blue },
    MsgSeparator = { fg = colors.content, bg = colors.bg_alt },
    MoreMsg = { fg = colors.blue },
    WarningMsg = { fg = colors.warning, bold = true },
    ErrorMsg = { fg = colors.error, reverse = true },
    MatchParen = { fg = colors.red, bg = colors.content, bold = true },
    TabLine = { fg = colors.fg, bg = colors.bg_alt, sp = colors.fg },
    TabLineSel = { fg = colors.comment, bg = colors.bg_alt_invert, sp = colors.fg, reverse = true },
    TabLineFill = { fg = colors.fg, bg = colors.bg_alt, sp = colors.fg },
    Visual = { fg = colors.cyan, bg = blend(colors.cyan, colors.bg, 0.15) },
    VisualNOS = { reverse = true },
    Search = { fg = colors.cyan, bg = blend(colors.cyan, colors.bg, 0.15) },
    IncSearch = { fg = colors.cyan, bold = true },
    CurSearch = { link = 'IncSearch' },
    Folded = { fg = colors.fg, bg = colors.bg_alt, sp = colors.bg },
    FoldColumn = { fg = colors.fg, bg = colors.bg_alt },
    ColorColumn = { bg = colors.bg_alt },
    SignColumn = { fg = colors.fg },
    WinSeparator = { fg = colors.cyan },
    VertSplit = { link = 'WinSeparator' },
    FloatBorder = { link = 'WinSeparator' },
    SpellBad = { sp = colors.error, undercurl = true },
    SpellCap = { sp = colors.violet, undercurl = true },
    SpellLocal = { sp = colors.warning, undercurl = true },
    SpellRare = { sp = colors.cyan, undercurl = true },
    QuickFixLine = { bg = colors.bg_alt },
    Directory = { fg = colors.blue },
    Question = { fg = colors.cyan, bold = true },
    Conceal = { fg = colors.blue },
    SpecialKey = { fg = colors.red, reverse = true },
    Whitespace = { fg = colors.bg_alt },
    Substitute = { fg = colors.orange, reverse = true },
    EndOfBuffer = { fg = colors.bg },
    NonText = { fg = colors.fg },
    -- Code
    Comment = { fg = colors.comment, italic = true },
    CursorColumn = { bg = colors.bg_alt },
    MatchWord = { bold = true },
    MatchWordCur = { bold = true },
    MatchParenCur = { bold = true },
    LineNr = { fg = colors.comment, bg = colors.bg_alt },
    DiffAdded = { fg = colors.added, reverse = true },
    DiffChanged = { fg = colors.changed, reverse = true },
    DiffRemoved = { fg = colors.removed, reverse = true },
    DiffFile = { fg = colors.comment },
    DiffIndexLine = { fg = colors.violet },
    Title = { fg = colors.orange, bold = true },
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
    Identifier = { fg = colors.blue },
    --       *Identifier      any variable name
    --        Function        function name (also: methods for classes)
    -- Variable = { fg = colors.blue },
    -- Function = { fg = colors.blue },
    Statement = { fg = colors.green },
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
    Error = { fg = colors.error, bg = colors.bg_alt, bold = true },
    -- GIT
    SignAdd = { fg = colors.added },
    SignChange = { fg = colors.changed },
    SignDelete = { fg = colors.deleted },
    GitSignsAdd = { fg = colors.added },
    GitSignsChange = { fg = colors.changed },
    GitSignsDelete = { fg = colors.deleted },
    GitGutterAdd = { fg = colors.added },
    GitGutterChange = { fg = colors.changed },
    GitGutterDelete = { fg = colors.deleted },
    -- Treesitter - Misc
    ['@comment'] = { link = 'Comment' },
    ['@error'] = { link = 'Error' },
    ['@preproc'] = { link = 'PreProc' },
    ['@define'] = { link = 'Define' },
    ['@operator'] = { link = 'Operator' },
    -- Treesitter - Punctuation
    ['@punctuation.delimiter'] = { fg = colors.content },
    ['@punctuation.bracket'] = { fg = colors.yellow },
    ['@punctuation.special'] = { fg = colors.blue },
    -- Treesitter - Literals
    ['@string'] = { link = 'String' },
    ['@string.regex'] = { fg = colors.orange },
    ['@string.escape'] = { fg = colors.orange },
    ['@string.special'] = { fg = colors.magenta },
    ['@character'] = { link = 'Character' },
    ['@character.special'] = { fg = colors.magenta },
    ['@boolean'] = { fg = colors.yellow },
    ['@number'] = { fg = colors.magenta },
    ['@float'] = { link = '@number' },
    -- Treesitter - Functions
    ['@function'] = { link = 'Function' },
    ['@function.call'] = { link = 'Function' },
    ['@function.builtin'] = { link = 'Function' },
    ['@method'] = { link = 'Function' },
    ['@method.call'] = { link = 'Function' },
    ['@constructor'] = { fg = colors.green },
    ['@parameter'] = { fg = colors.content, bold = true, italic = true },
    -- Treesitter - Keywords
    ['@keyword'] = { fg = colors.content, bold = true },
    ['@keyword.function'] = { link = '@keyword' },
    ['@keyword.operator'] = { fg = colors.green },
    ['@keyword.return'] = { fg = colors.green },
    ['@conditional'] = { link = 'Conditional' },
    ['@conditional.ternary'] = { link = 'Conditional' },
    ['@repeat'] = { link = 'Repeat' },
    ['@debug'] = { fg = colors.magenta },
    ['@label'] = { link = '@keyword' },
    ['@include'] = { fg = colors.green },
    ['@exception'] = { link = 'Exception' },
    -- Treesitter - Types
    ['@type'] = { fg = colors.orange },
    ['@type.builtin'] = { link = '@keyword' },
    ['@type.definition'] = { link = '@type' },
    ['@type.qualifier'] = { link = '@type.builtin' },
    ['@storageclass'] = { link = '@type' },
    ['@attribute'] = { link = '@keyword' },
    ['@field'] = { fg = colors.content },
    ['@property'] = { fg = colors.blue },
    -- Treesitter - Identifiers
    ['@variable'] = { fg = colors.blue },
    ['@variable.builtin'] = { link = '@variable' },
    ['@constant'] = { fg = colors.orange },
    ['@constant.builtin'] = { fg = colors.yellow },
    ['@constant.macro'] = { link = '@constant' },
    ['@namespace'] = { link = '@keyword' },
    ['@symbol'] = { link = '@keyword' },
    -- Treesitter - Text
    ['@text'] = { fg = colors.fg },
    ['@text.strong'] = { fg = colors.magenta },
    ['@text.emphasis'] = { fg = colors.magenta },
    ['@text.strike'] = { fg = colors.content },
    ['@text.title'] = { link = 'Title' },
    ['@text.literal'] = { link = '@text' },
    ['@text.quote'] = { fg = colors.cyan },
    ['@text.uri'] = { fg = colors.violet },
    ['@text.math'] = { fg = colors.magenta },
    ['@text.reference'] = { fg = colors.violet },
    ['@text.todo'] = { link = 'Title' },
    ['@text.warning'] = { link = 'WarningMsg' },
    ['@text.danger'] = { link = 'ErrorMsg' },
    ['@text.diff.add'] = { link = 'DiffAdd' },
    ['@text.diff.delete'] = { link = 'DiffDelete' },
    -- Treesitter - Tags
    ['@tag'] = { fg = colors.blue },
    ['@tag.attribute'] = { fg = colors.content },
    ['@tag.delimiter'] = { fg = colors.comment },
    -- Treesitter - Locals
    ['@definition.constant'] = { link = '@constant' },
    ['@definition.function'] = { link = '@function' },
    ['@definition.method'] = { link = '@method' },
    ['@defition.var'] = { link = '@variable' },
    ['@defition.parameter'] = { link = '@parameter' },
    ['@definition.macro'] = { link = '@constant.macro' },
    ['@definition.type'] = { link = '@type' },
    ['@definition.field'] = { link = '@field' },
    ['@defition.enum'] = { link = '@keyword' },
    ['@defition.namespace'] = { link = '@keyword' },
    ['@defition.import'] = { link = '@keyword' },
    -- LSP
    DiagnosticHint = { fg = colors.hint },
    DiagnosticInfo = { fg = colors.info },
    DiagnosticError = { fg = colors.error },
    DiagnosticOther = { fg = colors.other },
    DiagnosticSignHint = { link = 'DiagnosticHint' },
    DiagnosticSignInfo = { link = 'DiagnosticInfo' },
    DiagnosticSignWarn = { link = 'DiagnosticWarn' },
    DiagnosticSignError = { link = 'DiagnosticError' },
    DiagnosticSignOther = { link = 'DiagnosticOther' },
    DiagnosticSignWarning = { link = 'DiagnosticWarn' },
    DiagnosticFloatingHint = { link = 'DiagnosticHint' },
    DiagnosticFloatingInfo = { link = 'DiagnosticInfo' },
    DiagnosticFloatingWarn = { link = 'DiagnosticWarn' },
    DiagnosticFloatingError = { link = 'DiagnosticError' },
    DiagnosticUnderlineHint = { undercurl = true, sp = colors.hint },
    DiagnosticUnderlineInfo = { undercurl = true, sp = colors.info },
    DiagnosticUnderlineWarn = { undercurl = true, sp = colors.warning },
    DiagnosticUnderlineError = { undercurl = true, sp = colors.error },
    DiagnosticSignInformation = { link = 'DiagnosticInfo' },
    DiagnosticVirtualTextHint = { fg = colors.hint, bg = blend(colors.hint, colors.bg, 0.15) },
    DiagnosticVirtualTextInfo = { fg = colors.info, bg = blend(colors.info, colors.bg, 0.15) },
    DiagnosticVirtualTextWarn = { fg = colors.warning, bg = blend(colors.warning, colors.bg, 0.15) },
    DiagnosticVirtualTextError = { fg = colors.error, bg = blend(colors.error, colors.bg, 0.15) },
    LspDiagnosticsError = { link = 'DiagnosticError' },
    LspDiagnosticsWarning = { link = 'DiagnosticWarn' },
    LspDiagnosticsInfo = { link = 'DiagnosticInfo' },
    LspDiagnosticsInformation = { link = 'LspDiagnosticsInfo' },
    LspDiagnosticsHint = { link = 'DiagnosticHint' },
    LspDiagnosticsDefaultError = { link = 'LspDiagnosticsError' },
    LspDiagnosticsDefaultWarning = { link = 'LspDiagnosticsWarning' },
    LspDiagnosticsDefaultInformation = { link = 'LspDiagnosticsInfo' },
    LspDiagnosticsDefaultInfo = { link = 'LspDiagnosticsInfo' },
    LspDiagnosticsDefaultHint = { link = 'LspDiagnosticsHint' },
    LspDiagnosticsVirtualTextError = { link = 'DiagnosticVirtualTextError' },
    LspDiagnosticsVirtualTextWarning = { link = 'DiagnosticVirtualTextWarn' },
    LspDiagnosticsVirtualTextInformation = { link = 'DiagnosticVirtualTextInfo' },
    LspDiagnosticsVirtualTextInfo = { link = 'DiagnosticVirtualTextInfo' },
    LspDiagnosticsVirtualTextHint = { link = 'DiagnosticVirtualTextHint' },
    LspDiagnosticsFloatingError = { link = 'LspDiagnosticsError' },
    LspDiagnosticsFloatingWarning = { link = 'LspDiagnosticsWarning' },
    LspDiagnosticsFloatingInformation = { link = 'LspDiagnosticsInfo' },
    LspDiagnosticsFloatingInfo = { link = 'LspDiagnosticsInfo' },
    LspDiagnosticsFloatingHint = { link = 'LspDiagnosticsHint' },
    LspDiagnosticsSignError = { link = 'LspDiagnosticsError' },
    LspDiagnosticsSignWarning = { link = 'LspDiagnosticsWarning' },
    LspDiagnosticsSignInformation = { link = 'LspDiagnosticsInfo' },
    LspDiagnosticsSignInfo = { link = 'LspDiagnosticsInfo' },
    LspDiagnosticsSignHint = { link = 'LspDiagnosticsHint' },
    NvimTreeLspDiagnosticsError = { link = 'LspDiagnosticsError' },
    NvimTreeLspDiagnosticsWarning = { link = 'LspDiagnosticsWarning' },
    NvimTreeLspDiagnosticsInformation = { link = 'LspDiagnosticsInfo' },
    NvimTreeLspDiagnosticsInfo = { link = 'LspDiagnosticsInfo' },
    NvimTreeLspDiagnosticsHint = { link = 'LspDiagnosticsHint' },
    LspDiagnosticsUnderlineError = { link = 'DiagnosticUnderlineError' },
    LspDiagnosticsUnderlineWarning = { link = 'DiagnosticUnderlineWarn' },
    LspDiagnosticsUnderlineInformation = { link = 'DiagnosticUnderlineInfo' },
    LspDiagnosticsUnderlineInfo = { link = 'DiagnosticUnderlineInfo' },
    LspDiagnosticsUnderlineHint = { link = 'DiagnosticUnderlineHint' },
    LspReferenceText = { bg = colors.bg_alt },
    LspReferenceRead = { bg = colors.bg_alt },
    LspReferenceWrite = { bg = colors.bg_alt },
    LspCodeLens = { fg = colors.comment, italic = true },
    LspCodeLensSeparator = { fg = colors.comment, italic = true },
    -- LSPSAGA - general
    TitleString = { link = 'Title' },
    TitleIcon = { fg = colors.red },
    SagaBorder = { link = 'FloatBorder' },
    SagaExpand = { fg = colors.red },
    SagaCollapse = { fg = colors.red },
    SagaBeacon = { bg = colors.magenta },
    -- LSPSAGA - code action
    ActionPreviewNormal = { link = 'SagaNormal' },
    ActionPreviewBorder = { link = 'SagaBorder' },
    ActionPreviewTitle = { fg = colors.violet, bg = colors.bg_alt },
    CodeActionNormal = { link = 'SagaNormal' },
    CodeActionBorder = { link = 'SagaBorder' },
    CodeActionText = { link = 'String' },
    CodeActionNumber = { link = 'Number' },
    -- LSPSAGA - finder
    FinderSelection = { link = 'PmenuSel' },
    FinderFileName = { fg = colors.white },
    FinderCount = { link = 'Label' },
    FinderIcon = { fg = colors.cyan },
    FinderType = { fg = colors.violet },
    -- lSPSAGA - finder spinner
    FinderSpinnerTitle = { link = 'Title' },
    FinderSpinner = { fg = colors.magenta, bold = true },
    FinderPreviewSearch = { link = 'Search' },
    FinderVirtText = { fg = colors.red },
    FinderNormal = { link = 'SagaNormal' },
    FinderBorder = { link = 'SagaBorder' },
    FinderPreviewBorder = { link = 'SagaBorder' },
    -- LSPSAGA - definition
    DefinitionBorder = { link = 'SagaBorder' },
    DefinitionNormal = { link = 'SagaNormal' },
    DefinitionSearch = { link = 'Search' },
    -- LSPSAGA - hover
    HoverNormal = { link = 'SagaNormal' },
    HoverBorder = { link = 'SagaBorder' },
    -- LSPSAGA - rename
    RenameBorder = { link = 'SagaBorder' },
    RenameNormal = { fg = colors.orange, bg = colors.bg_alt },
    RenameMatch = { link = 'Search' },
    -- LSPSAGA - diagnostic
    DiagnosticBorder = { link = 'SagaBorder' },
    DiagnosticSource = { fg = 'gray' },
    DiagnosticNormal = { link = 'SagaNormal' },
    DiagnosticPos = { fg = colors.gray },
    DiagnosticWord = { fg = colors.fg },
    --  LSPSAGA - Call Hierachry
    CallHierarchyNormal = { link = 'SagaNormal' },
    CallHierarchyBorder = { link = 'SagaBorder' },
    CallHierarchyIcon = { fg = colors.violet },
    CallHierarchyTitle = { fg = colors.red },
    -- LSPSAGA - lightbulb
    LspSagaLightBulb = { link = 'DiagnosticSignHint' },
    -- LSPSAGA - shadow
    SagaShadow = { bg = colors.bg_alt },
    -- LSPSAGA- Outline
    OutlineIndent = { fg = colors.magenta },
    OutlinePreviewBorder = { link = 'SagaNormal' },
    OutlinePreviewNormal = { link = 'SagaBorder' },
    -- LSPSAGA - Float term
    TerminalBorder = { link = 'SagaBorder' },
    TerminalNormal = { link = 'SagaNormal' },
    -- CMP KIND
    CmpItemAbbrDeprecated = { fg = colors.comment, strikethrough = true },
    CmpItemAbbrMatch = { fg = colors.yellow, reverse = true },
    CmpItemAbbrMatchFuzzy = { fg = colors.yellow, reverse = true },
    CmpItemKindFunction = { link = '@function' },
    CmpItemKindMethod = { link = '@method' },
    CmpItemKindConstructor = { link = '@constructor' },
    CmpItemKindClass = { link = '@type' },
    CmpItemKindEnum = { link = '@constant' },
    CmpItemKindEvent = { fg = colors.yellow },
    CmpItemKindInterface = { link = '@constructor' },
    CmpItemKindStruct = { link = '@type' },
    CmpItemKindVariable = { link = '@variable.builtin' },
    CmpItemKindField = { link = '@field' },
    CmpItemKindProperty = { link = '@property' },
    CmpItemKindEnumMember = { link = '@constant.builtin' },
    CmpItemKindConstant = { link = '@constant.builtin' },
    CmpItemKindKeyword = { link = '@keyword' },
    CmpItemKindModule = { link = '@function' },
    CmpItemKindValue = { fg = colors.fg },
    CmpItemKindUnit = { link = '@number' },
    CmpItemKindText = { link = '@string' },
    CmpItemKindSnippet = { fg = colors.fg },
    CmpItemKindFile = { fg = colors.fg },
    CmpItemKindFolder = { fg = colors.fg },
    CmpItemKindColor = { fg = colors.fg },
    CmpItemKindReference = { fg = colors.fg },
    CmpItemKindOperator = { link = '@operator' },
    CmpItemKindTypeParameter = { fg = colors.violet },
    -- NvimTree
    NvimTreeFolderIcon = { link = 'Directory' },
    NvimTreeIndentMarker = { fg = colors.fg },
    NvimTreeNormal = { link = 'Normal' },
    NvimTreeNormalNC = { link = 'NormalNC' },
    NvimTreeWinSeparator = { link = 'WinSeparator' },
    NvimTreeFolderName = { fg = colors.fg },
    NvimTreeOpenedFolderName = { fg = colors.fg, bold = true, italic = true },
    NvimTreeEmptyFolderName = { link = 'Comment' },
    NvimTreeOpenedFile = { bg = colors.bg_alt },
    NvimTreeGitIgnored = { link = 'Comment' },
    NvimTreeImageFile = { fg = colors.fg },
    NvimTreeSpecialFile = { fg = colors.violet, underline = true },
    NvimTreeEndOfBuffer = { fg = colors.bg },
    NvimTreeCursorLine = { link = 'CursorLine' },
    NvimTreeGitStaged = { fg = colors.added },
    NvimTreeGitNew = { fg = colors.added },
    NvimTreeGitRenamed = { fg = colors.added },
    NvimTreeGitDeleted = { fg = colors.deleted },
    NvimTreeGitMerge = { fg = colors.changed },
    NvimTreeGitDirty = { fg = colors.changed },
    NvimTreeSymlink = { fg = colors.cyan },
    NvimTreeRootFolder = { fg = colors.blue, bold = true },
    -- NeoTree
    NeoTreeNormal = { link = 'NvimTreeNormal' },
    NeoTreeDirectoryIcon = { link = 'NvimTreeFolderIcon' },
    NeoTreeIndentMarker = { link = 'NvimTreeIndentMarker' },
    NeoTreeNormalNC = { link = 'NvimTreeNormalNC' },
    NeoTreeWinSeparator = { link = 'NvimTreeWinSeparator' },
    NeoTreeDirectoryName = { link = 'NvimTreeFolderName' },
    NeoTreeOpenedDirectoryName = { link = 'NvimTreeOpenedFolderName' },
    NeoTreeOpenedFile = { link = 'NvimTreeOpenedFile' },
    NeoTreeGitIgnored = { link = 'NvimTreeGitIgnored' },
    NeoTreeImageFile = { link = 'NvimTreeImageFile' },
    NeoTreeSpecialFile = { link = 'NvimTreeSpecialFile' },
    NeoTreeEndOfBuffer = { link = 'NvimTreeEndOfBuffer' },
    NeoTreeCursorLine = { link = 'NvimTreeCursorLine' },
    NeoTreeGitAdded = { link = 'NvimTreeGitStaged' },
    NeoTreeGitConflict = { fg = colors.red },
    NeoTreeGitDeleted = { link = 'NvimTreeGitDeleted' },
    NeoTreeGitModified = { link = 'NvimTreeGitDirty' },
    NeoTreeGitUnstaged = { link = 'NvimTreeGitUnstaged' },
    NeoTreeGitUntracked = { link = 'NvimTreeGitNew' },
    NeoTreeHiddenByName = { link = 'NvimTreeEmptyFolderName' },
    NeoTreeExpander = { fg = colors.fg },
    NeoTreeStatusLine = { link = 'NvimTreeCursorLine' },
    NeoTreeStatusLineNC = { link = 'NvimTreeStatusLineNC' },
    NeoTreeSymbolicLinkTarget = { link = 'NvimTreeSymlink' },
    NeoTreeRootName = { link = 'NvimTreeRootFolder' },
    -- Lir
    LirDir = { fg = colors.blue },
    -- TELESCOPE
    TelescopeNormal = { default = true, link = 'Normal' },
    TelescopePreviewNormal = { default = true, link = 'TelescopeNormal' },
    TelescopePromptNormal = { default = true, link = 'TelescopeNormal' },
    TelescopeResultsNormal = { default = true, link = 'TelescopeNormal' },
    TelescopeBorder = { link = 'VertSplit' },
    TelescopePromptBorder = { default = true, link = 'TelescopeBorder' },
    TelescopeResultsBorder = { default = true, link = 'TelescopeBorder' },
    TelescopePreviewBorder = { default = true, link = 'TelescopeBorder' },
    TelescopeTitle = { default = true, fg = colors.cyan, reverse = true },
    TelescopePromptTitle = { default = true, link = 'TelescopeTitle' },
    TelescopeResultsTitle = { default = true, link = 'TelescopeTitle' },
    TelescopePreviewTitle = { default = true, link = 'TelescopeTitle' },
    TelescopeSelection = { link = 'Visual' },
    TelescopeMatching = { link = 'IncSearch' },
    -- DASHBOARD
    DashboardHeader = { fg = colors.blue },
    DashboardCenter = { fg = colors.fg },
    DashboardFooter = { fg = colors.violet },
    -- HOP
    HopPreview = { fg = colors.yellow, bg = blend(colors.yellow, colors.bg, 0.15), bold = true },
    HopNextKey = { fg = colors.magenta, bg = blend(colors.magenta, colors.bg, 0.15), bold = true },
    HopNextKey1 = { fg = colors.blue, bg = blend(colors.blue, colors.bg, 0.15), bold = true },
    HopNextKey2 = { fg = darken(colors.blue, 1.25) },
    HopUnmatched = { fg = darken(colors.fg, 2) },
    -- Sneak
    Sneak = { link = 'HopNextKey' },
    -- TWILIGHT
    Twilight = { fg = solarized:is_not_transparent(colors.comment) },
    -- Navic
    NavicIconsFile = { fg = colors.blue },
    NavicIconsModule = { link = '@namespace' },
    NavicIconsNamespace = { link = '@namespace' },
    NavicIconsPackage = { fg = colors.blue },
    NavicIconsClass = { link = '@type' },
    NavicIconsMethod = { link = '@method' },
    NavicIconsProperty = { link = '@property' },
    NavicIconsField = { link = '@field' },
    NavicIconsConstructor = { link = '@constructor' },
    NavicIconsEnum = { link = '@keyword' },
    NavicIconsInterface = { link = '@type' },
    NavicIconsFunction = { link = '@function' },
    NavicIconsVariable = { link = '@variable' },
    NavicIconsConstant = { link = '@constant' },
    NavicIconsString = { link = '@string' },
    NavicIconsNumber = { link = '@number' },
    NavicIconsBoolean = { link = '@boolean' },
    NavicIconsArray = { link = 'punctuation.bracket' },
    NavicIconsObject = { link = '@property' },
    NavicIconsKey = { link = '@keyword' },
    NavicIconsKeyword = { link = 'Keyword' },
    NavicIconsNull = { link = '@constant' },
    NavicIconsEnumMember = { link = '@constant' },
    NavicIconsStruct = { link = '@keyword' },
    NavicIconsEvent = { link = 'Special' },
    NavicIconsOperator = { link = '@operator' },
    NavicIconsTypeParameter = { link = '@parameter' },
    NavicText = { link = '@text' },
    NavicSeparator = { fg = colors.content },
    -- BarBar
    BufferCurrent = { fg = colors.fg, bg = colors.bg_alt },
    BufferCurrentIndex = { fg = colors.blue, bg = colors.bg_alt },
    BufferCurrentMod = { fg = colors.yellow, bg = colors.bg_alt },
    BufferCurrentSign = { fg = colors.blue, bg = colors.bg_alt },
    BufferCurrentTarget = { fg = colors.red, bg = colors.bg_alt, bold = true },
    BufferVisible = { fg = colors.fg, bg = colors.bg },
    BufferVisibleIndex = { fg = colors.blue, bg = colors.bg },
    BufferVisibleMod = { fg = colors.yellow, bg = colors.bg },
    BufferVisibleSign = { fg = colors.blue, bg = colors.bg },
    BufferVisibleTarget = { fg = colors.red, bg = colors.bg, bold = true },
    BufferInactive = { fg = colors.comment, bg = colors.bg },
    BufferInactiveIndex = { fg = colors.comment, bg = colors.bg },
    BufferInactiveMod = { fg = colors.orange, bg = colors.bg },
    BufferInactiveSign = { fg = colors.bg_alt, bg = colors.bg },
    BufferInactiveTarget = { fg = colors.red, bg = colors.bg, bold = true },
    BufferTabpage = { fg = colors.bg_alt, bg = colors.bg },
    BufferTabpages = { bg = colors.bg },
    -- Bufferline
    BufferLineIndicatorSelected = { fg = colors.changed },
    -- Notify
    NotifyBackground = { link = 'NormalFloat' },
    NotifyERRORBorder = { fg = colors.error },
    NotifyWARNBorder = { fg = colors.warning },
    NotifyINFOBorder = { fg = colors.info },
    NotifyDEBUGBorder = { fg = colors.comment },
    NotifyTRACEBorder = { fg = colors.purple },
    NotifyERRORIcon = { fg = colors.error },
    NotifyWARNIcon = { fg = colors.warning },
    NotifyINFOIcon = { fg = colors.info },
    NotifyDEBUGIcon = { fg = colors.comment },
    NotifyTRACEIcon = { fg = colors.purple },
    NotifyERRORTitle = { fg = colors.error },
    NotifyWARNTitle = { fg = colors.warning },
    NotifyINFOTitle = { fg = colors.info },
    NotifyDEBUGTitle = { fg = colors.comment },
    NotifyTRACETitle = { fg = colors.purple },
    NotifyERRORBody = { fg = colors.fg, bg = colors.bg },
    NotifyWARNBody = { fg = colors.fg, bg = colors.bg },
    NotifyINFOBody = { fg = colors.fg, bg = colors.bg },
    NotifyDEBUGBody = { fg = colors.fg, bg = colors.bg },
    NotifyTRACEBody = { fg = colors.fg, bg = colors.bg },
    -- Packer
    packerString = { fg = colors.cyan },
    packerHash = { fg = colors.orange },
    packerOutput = { fg = colors.violet },
    packerRelDate = { fg = colors.fg },
    packerSuccess = { fg = colors.green },
    packerStatusSuccess = { fg = colors.blue },
    -- Lazy
    LazyButton = { fg = colors.green, bg = darken(colors.green, 50) },
    LazyButtonActive = { fg = colors.green, bg = darken(colors.green, 70) },
    LazyDir = { link = 'Directory' },
    LazyH1 = { fg = colors.yellow },
    LazyH2 = { fg = colors.orange },
    LazyNoCond = { fg = colors.yellow },
    LazyProgressDone = { fg = colors.green },
    LazyProgressTodo = { fg = colors.content },
    LazyProp = { fg = colors.blue },
    LazyReasonCmd = { fg = colors.orange },
    LazyReasonEvent = { fg = colors.yellow },
    LazyReasonFt = { fg = colors.violet },
    LazyReasonImport = { fg = colors.blue },
    LazyReasonKeys = { fg = colors.blue },
    LazyReasonPlugin = { fg = colors.blue },
    LazyReasonRuntime = { fg = colors.blue },
    LazyReasonSource = { fg = colors.violet },
    LazyReasonStart = { fg = colors.cyan },
    LazySpecial = { fg = colors.green },
    LazyTaskError = { fg = colors.red },
    LazyTaskOutput = { fg = colors.green },
    -- Neorg
    ['@neorg.headings.1.title'] = { fg = colors.orange },
    ['@neorg.headings.2.title'] = { fg = colors.blue },
    ['@neorg.headings.3.title'] = { fg = colors.yellow },
    ['@neorg.headings.4.title'] = { fg = colors.violet },
    ['@neorg.headings.5.title'] = { fg = colors.red },
    ['@neorg.headings.6.title'] = { fg = colors.cyan },
    ['@neorg.headings.1.prefix'] = { link = '@neorg.headings.1.title' },
    ['@neorg.headings.2.prefix'] = { link = '@neorg.headings.2.title' },
    ['@neorg.headings.3.prefix'] = { link = '@neorg.headings.3.title' },
    ['@neorg.headings.4.prefix'] = { link = '@neorg.headings.4.title' },
    ['@neorg.headings.5.prefix'] = { link = '@neorg.headings.5.title' },
    ['@neorg.headings.6.prefix'] = { link = '@neorg.headings.6.title' },
    ['@neorg.lists.ordered.1.prefix'] = { link = '@neorg.headings.1.title' },
    ['@neorg.lists.ordered.2.prefix'] = { link = '@neorg.headings.2.title' },
    ['@neorg.lists.ordered.3.prefix'] = { link = '@neorg.headings.3.title' },
    ['@neorg.lists.ordered.4.prefix'] = { link = '@neorg.headings.4.title' },
    ['@neorg.lists.ordered.5.prefix'] = { link = '@neorg.headings.5.title' },
    ['@neorg.lists.ordered.6.prefix'] = { link = '@neorg.headings.5.title' },
    ['@neorg.lists.unordered.1.prefix'] = { link = '@neorg.lists.ordered.1.prefix' },
    ['@neorg.lists.unordered.2.prefix'] = { link = '@neorg.lists.ordered.2.prefix' },
    ['@neorg.lists.unordered.3.prefix'] = { link = '@neorg.lists.ordered.3.prefix' },
    ['@neorg.lists.unordered.4.prefix'] = { link = '@neorg.lists.ordered.4.prefix' },
    ['@neorg.lists.unordered.5.prefix'] = { link = '@neorg.lists.ordered.5.prefix' },
    ['@neorg.lists.unordered.6.prefix'] = { link = '@neorg.lists.ordered.6.prefix' },
    ['@neorg.links.file'] = { link = '@text.uri' },
  }
end

return vscode_theme
