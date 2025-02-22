return {
  'windwp/nvim-ts-autotag',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = 'nvim-treesitter/nvim-treesitter',
  config = function()
    require('nvim-ts-autotag').setup {
      -- Enable standard features
      opts = {
        enable_close = true, -- Automatically close tags
        enable_rename = true, -- Automatically rename paired tags
        enable_close_on_slash = true, -- Close tags when typing </
      },
      -- Filetypes where we want autotagging
      filetypes = {
        'html',
        'javascript',
        'typescript',
        'javascriptreact',
        'typescriptreact',
        'jsx',
        'tsx',
        'markdown',
      },
      -- Skip specific tags (optional)
      skip_tags = {
        'area',
        'base',
        'br',
        'col',
        'command',
        'embed',
        'hr',
        'img',
        'input',
        'keygen',
        'link',
        'meta',
        'param',
        'source',
        'track',
        'wbr',
      },
    }
  end,
}
