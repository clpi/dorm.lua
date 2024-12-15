local mod = require("down.mod")
local M = mod.create("integration.telescope")
local tok, t = pcall(require, "telescope")

local k = vim.keymap.set

M.setup = function()
  if tok then
    return {
      loaded = true,
      requires = { "cmd", "workspace" },
    }
  else
    return {
      loaded = false,
    }
  end
end

---@class down.integration.telescope.Data
M.data = {
  picker_names = {
    "linkable",
    "files",
    -- "insert_link",
    -- "insert_file_link",
    -- "search_headings",
    -- "find_project_tasks",
    -- "find_aof_project_tasks",
    -- "find_aof_tasks",
    -- "find_context_tasks",
    "workspace",
    -- "backlinks.file_backlinks",
    -- "backlinks.header_backlinks",
  },
}
---@class down.integration.telescope.Config
M.config = {}
M.data.pickers = function()
  local r = {}
  for _, pic in ipairs(M.data.picker_names) do
    local ht, te = pcall(require, "telescope._extensions.down.picker." .. pic)
    if ht then
      r[pic] = te
    end
    r[pic] = require("telescope._extensions.down.picker." .. pic)
  end
  return r
end
M.subscribed = {
  cmd = {
    ["integration.telescope.find.files"] = true,
    ["integration.telescope.find.workspace"] = true,
  },
}
M.load = function()
  if tok then
    mod.await("cmd", function(cmd)
      cmd.add_commands_from_table({
        find = {
          args = 0,
          name = "integration.telescope.find",
          subcommands = {
            files = {
              name = "integration.telescope.find.files",
              args = 0,
            },
            workspace = {
              name = "integration.telescope.find.workspace",
              args = 0,
            },
          },
        },
      })
    end)
    assert(tok, t)
    t.load_extension("down")
    for _, pic in ipairs(M.data.picker_names) do
      -- t.load_extension(pic)
      k("n", "<plug>down.telescope." .. pic .. "", M.data.pickers()[pic])
    end
  else
    return
  end
end

M.on = function(event)
  if event.type == "integration.telescope.find.files" then
    vim.cmd([[Telescope down find_down]])
  elseif event.type == "integration.telescope.find.workspace" then
    vim.cmd([[Telescope down workspace]])
    require("telescope._extensions.down.picker.workspace")()
  end
end

return M
