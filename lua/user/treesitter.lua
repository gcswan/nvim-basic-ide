-- local status_ok, treesitter = pcall(require, "nvim-treesitter")
-- if not status_ok then
--   return
-- end

local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup({
  ensure_installed = { "javascript", "typescript", "lua", "markdown", "markdown_inline", "bash", "python", "tsx" }, -- put the language you want in this array
  ignore_install = { "" }, -- List of parsers to ignore installing
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  highlight = {
    enable = true, -- false will disable the whole extensions
    disable = { 'markdown', 'markdown_inline' }, -- list of language that will be disabled
  },
  autopairs = {
    enable = true,
  },
  indent = {
    enable = true,
    disable = { "python", "css" }
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
})
