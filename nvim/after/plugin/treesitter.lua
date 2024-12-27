require('nvim-treesitter.configs').setup {
  ensure_installed = { "typescript", "c", "cpp", "javascript", "lua", "ocaml", "go", "dockerfile", "php", "perl", "json", "yaml", "toml", "html", "css", "bash", "tsx", "python", "rust", "haskell" },
  sync_install = false,
  auto_install = true,
  indent = {
    enable = true,
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.crystal = {
  install_info = {
    url = "https://github.com/crystal-lang-tools/tree-sitter-crystal",
    files = { "src/parser.c", "src/scanner.c" },
    branch = "main",
  },
  filetype = "crystal",
}

local roc_conf = require "nvim-treesitter.parsers".get_parser_configs()
roc_conf.roc = {
  install_info = {
    url = "https://github.com/faldor20/tree-sitter-roc",
    files = { "src/parser.c", "src/scanner.c" },
    branch = "main",
  },
  filetype = "roc",
}

local list = require("nvim-treesitter.parsers").get_parser_configs()
list.reason = {
  install_info = {
    url = "https://github.com/reasonml-editor/tree-sitter-reason",
    files = { "src/parser.c", "src/scanner.c" },
    branch = "master",
  },
}

-- vim.filetype.add {
--   extension = {
--     re = "reason",
--   },
-- }
--
-- vim.treesitter.language.add("reason", { filetype = "reason" })

require('treesitter-context').setup {
  enable = false
}

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldcolumn = "0"
vim.opt.foldtext = ""
vim.opt.foldlevel = 99
vim.opt.foldnestmax = 4
