local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("sixfourtwelve")

local formatter_ocamlformat = {
  function()
    return {
      exe = "ocamlformat",
      args = { vim.api.nvim_buf_get_name(0) },
      stdin = true
    }
  end
}

require('formatter').setup({
  logging = true,
  filetype = {
    ocamlformat = formatter_ocamlformat,
  }
})

vim.api.nvim_exec([[
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
]], true)

vim.api.nvim_command(
  "autocmd BufWritePre *.ex,*.go,*.lua,*.rb,*.hs,*.py,*.ml,*.mli,*.c,*.h,*.cc,*.hh,*.cpp,*.hpp,*.m,*.mm,*.php,*.odin,*.rs,*.cs,*.java,*.re,*.rei,*.res,*.resi,*.scala,*.sbt lua vim.lsp.buf.format()")

vim.o.termguicolors = true

require("catppuccin").setup({
  transparent_background = true,
})


vim.cmd [[colorscheme catppuccin]]

vim.api.nvim_set_option("clipboard", "unnamed")

require('gitsigns').setup()

require('lualine').setup {
  options = {
    component_separators = '',
    section_separators = { left = '', right = '' },
    always_divide_middle = true,
  },
  sections = {
    lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
    lualine_b = { 'filename', 'branch' },
    lualine_c = { 'diagnostic', 'filesize', 'diff' },
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {
    lualine_a = {
      {
        'buffers',
        mode = 0,
        path = 0,
        use_mode_colors = true,
        show_modified_status = true,
        symbols = {
          modified = ' ●', -- Text to show when the buffer is modified
          alternate_file = '',
          directory = '', -- Text to show when the buffer is a directory
        },
      }
    },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  extensions = {},
}

require 'ocaml_mlx'
