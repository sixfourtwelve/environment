vim.api.nvim_create_augroup('setIndent', { clear = true })
vim.api.nvim_create_autocmd('Filetype', {
  group = 'setIndent',
  pattern = { 'javascript', 'typescript', 'typescriptreact', 'javascriptreact' },
  command = 'setlocal shiftwidth=4 tabstop=4'
})
