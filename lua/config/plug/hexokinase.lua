local g = vim.g

-- Highlighting type
g.Hexokinase_highlighters = {
  'virtual', -- Square after the color
  -- 'sign_column', -- Square in the gutter/sign column
  -- 'background', -- Highlight background of the #
  -- 'backgroundfull', -- Highlight entire background
  -- 'foreground', -- Highlight foreground of the #
  'foregroundfull' -- Highlight entire foreground
}

-- Patterns to match for all filetypes
g.Hexokinase_optInPatterns = {
    'full_hex',
    'triple_hex',
    'rgb',
    'rgba',
    'hsl',
    'hsla',
    -- 'colour_names'
}
