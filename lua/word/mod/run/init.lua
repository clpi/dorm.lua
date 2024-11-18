local d = require("word")
local lib, mod = d.lib, d.mod

local M = mod.create("run")

M.load = function()
  mod.await("cmd", function(cmd)
    cmd.add_commands_from_table({
      run = {
        name = "run",
        subcommands = {
          update = {
            args = 0,
            name = "run.update"
          },
          insert = {
            name = "run.insert",
            args = 0,
          },
        },
      },
      stop = {
        name = "stop",
        args = 0,
      }
    })
  end)
end



M.setup = function()
  return {
    success = true,
    requires = {
      "workspace"
    }
  }
end

M.public = {

}

M.config.private = {

}
M.config.public = {

}
M.private = {

}
M.events = {}


M.events.subscribed = {
  cmd = {
    stop = true,
    ["run.insert"] = true,
    ["run.update"] = true,
  },
}

return M
