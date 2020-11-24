dofile_once("mods/azoth/files/lib/disco_util.lua")
local polytools = dofile_once("[POLYTOOLS_PATH]polytools.lua")
local self = Entity.Current()
polytools.load(self, self.var_str.polydata)
