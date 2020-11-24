dofile_once("mods/azoth/files/lib/disco_util.lua")

function damage_received(damage, message, entity_thats_responsible, is_fatal)
    local self = Entity.Current()
    if is_fatal then
        self.DamageModelComponent.hp = damage + 1 / 25
        local effect = self:children():search(function(ent) return ent:name() == "polytools" end)
        effect.GameEffectComponent.frames = 1
        EntityRemoveComponent(self:id(), GetUpdatedComponentID())
    end
end
