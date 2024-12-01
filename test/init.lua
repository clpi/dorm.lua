#!/usr/bin/env lua

T = {}

--- Sets up jot with a given module.
---@param module string The name of the module to load.
---@param config table? The configuration for the module.
---@return table
T.jot_setup = function(module, config)
  local jot = require("jot")
  jot.setup({
    load = {
      base = {},
      [module] = { config = config },
    },
  })

  return jot
end

--- Runs a callback in the context of a given file.
---@param filename string The name of the file (used to determine filetype)
---@param content string The content of the buffer.
---@param callback fun(bufnr: number) The function to execute with the buffer number provided.
function T.in_file(filename, content, cb)
  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_name(buf, filename)
  vim.api.nvim_buf_set_lines(buf, 0, -1, true, vim.split(content, "\n"))

  cb(buf)

  vim.api.nvim_buf_delete(buf, { force = true })
end

return tests
