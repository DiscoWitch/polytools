local polytools = {}

---Call this on mod initialization to let it know where it is and
---@param polytools_path string
function polytools.init(polytools_path)
    polytools_path = polytools_path .. "/"
    polytools_path = string.gsub(polytools_path, "/+", "/")
    local mod_files = {"polytools.lua", "apply.lua", "delay_load.lua", "effect_silent.xml",
                       "ui/heart.xml", "ui/polywand.xml", "ui/player_base.xml",
                       "ui/player_base_worm.xml"}
    for k, v in ipairs(mod_files) do
        local file_path = polytools_path .. v
        local text = ModTextFileGetContent(file_path)
        text = string.gsub(text, "%[POLYTOOLS_PATH%]", polytools_path)
        ModTextFileSetContent(file_path, text)
    end
end

return polytools
