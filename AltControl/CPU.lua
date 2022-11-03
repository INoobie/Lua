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
for i,v in pairs(game:GetService('Workspace').MAP:GetChildren()) do
  if v:IsA("Part") then
    v:Destroy() 
  end 
end
for i,v in pairs(game:GetService("Workspace").MAP.Indestructible:GetChildren()) do
  if v:IsA('Model') then
    v:Destroy() 
  end 
end 
game:GetService("Workspace").print:Destroy()
game:GetService("Workspace").Cashiers:Destroy()
game:GetService("Workspace").Bush:Destroy()
for i,v in pairs(game:GetService("Workspace").Players:GetChildren()) d
  if v.Name ~= game.Players.LocalPlayer.Name then
    v:Destroy() 
  end 
end 
game:GetService("Workspace").Vehicles:Destroy()
game:GetService("Workspace").Lights:Destroy()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
  if v:IsA("Model") or v:IsA("Part") then
    v:Destroy() 
  end 
end 
game:GetService("Workspace").Ignored:Destroy()
game:GetService("RunService"):Set3dRenderingEnabled(false)
-- render
