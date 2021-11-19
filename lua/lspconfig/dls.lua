local configs = require 'lspconfig/configs'
local util = require 'lspconfig/util'

local root_files = {
  '.git',
}

configs.dls = {
  default_config = {
    cmd = { vim.fn.getenv 'HOME' .. '/.dub/packages/.bin/dls-latest' },
    filetypes = { 'd' },
    root_dir = util.root_pattern(unpack(root_files)),
    single_file_support = false,
  },
}
