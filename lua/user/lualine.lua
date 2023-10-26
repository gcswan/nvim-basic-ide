local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end


local diagnostics = {
  "diagnostics",
  sources = { "nvim_diagnostic" },
  sections = { "error", "warn" },
  symbols = { error = " ", warn = " " },
  always_visible = true,
  colored = false,
}


-- local diff = {
  -- "diff",
  -- colored =  true,
  -- symbols = { added = " ", modified = " ", removed = " " }
  -- cond = hide_in_width,
-- }




local filetype = {
  "filetype",
  -- icons_enabled = false,
}

local location = {
  "location",
  padding = 0,
}

local spaces = function()
  return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
end

lualine.setup {
  options = {
    globalstatus = true,
    icons_enabled = true,
    theme = "sonokai",
    -- component_separators = { left = "", right = "" },
    -- section_separators = { left = "", right = "" },
    disabled_filetypes = { "alpha", "dashboard" },
    always_divide_middle = true,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = {"branch","filename"},
    lualine_c = { diagnostics },
    lualine_x = { spaces, "encoding", filetype },
    lualine_y = { location },
    lualine_z = { "progress" },
  },
}

