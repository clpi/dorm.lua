local d = require("word")
local lib, mod = d.lib, d.mod

local init = mod.create("track")

init.load = function()
  mod.await("cmd", function(cmd)
    cmd.add_commands_from_table({
      ["track"] = {
        subcommands = {
          update = {
            args = 0,
            name = "track.update"
          },
          insert = {
            name = "track.insert",
            args = 0,
          },
        },
        name = "track"
      }
    })
  end)
end



init.setup = function()
  return {
    success = true,
    requires = {
      "workspace"
    }

  }
end

init.public = {

}

init.config.private = {

}
init.config.public = {

}
init.private = {

}
init.events = {}


init.events.subscribed = {
  cmd = {
    ["track.insert"] = true,
    ["track.update"] = true,
  },
}

return init