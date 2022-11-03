local hooking;
hooking = hookmetamethod(game, '__index', function(a,b)
    if a == 'Humanoid' and b == 'WalkSpeed' then
        return 16
    elseif a == 'Humanoid' and b == 'JumpPower' then
        return 50
    elseif a == 'Humanoid' and b == 'JumpHeight' then
        return 7.1
    end
    return hooking(a,b)
end)

 local anticheat
 local badremotes = {"CHECKER_1","CHECKER_2","TeleportDetect","OneMoreTime","BreathingHAMON","VirusCough"}
 anticheat = hookmetamethod(game, '__namecall', function(...)
    local args = {...}
    local method = getnamecallmethod()
    if(method == 'FireServer' and args[1].Name:lower() == 'mainevent' and table.find(badremotes, args[2])) then
        return
    end
    return anticheat(table.unpack(args))
 end)
for i,v in next, getconnections(game:GetService('ScriptContext').Error) do
    v:Disable()
end
