for _,v in pairs(game:GetDescendants()) do
    if v:IsA('Decal') or v:IsA('Texture') or v:IsA('SpotLight') or v:IsA('WedgePart') or v:IsA('UnionOperation') then
        v:Destroy()
    elseif v:IsA('Part') then
        v.Material = Enum.Material.Air
        v.Transparency = 1
    elseif v.Name == 'Terrian' then
        v.WaterReflectace = 1
        v.WaterTransparency = 1
    elseif v:IsA('MeshPart') then
        v.TextureID = 0
        v.Transparency = 1
    end
end
