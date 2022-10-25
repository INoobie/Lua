local money = {};

local leaderstats = Instance.new('Folder', game:GetService('Players').LocalPlayer);

leaderstats.Name = 'leaderstats';

local Paypal = Instance.new('NumberValue', leaderstats);

Paypal.Name = 'Paypal';

Paypal.Value = game:GetService('Players').LocalPlayer.leaderstats.Paypal.Value;

local Debit = Instance.new('NumberValue', leaderstats);

Debit.Name = 'Debit';

Debit.Value = game:GetService('Players').LocalPlayer.leaderstats.Debit.Value;

for i,v in pairs(Debit) do
    if v.Value == Paypal.Value then
        table.insert(money, Paypal.Value)
    else
        return v.Value
    end
end

for i,v in pairs(Paypal) do
    if v.Value == Debit.Value then
        table.insert(money, Debit.Value)
    else
        return v.Value
    end
end

for i=1,math.huge do
    if i ~= Paypal.Value then
        return i
    end
    wait(0.1)
end

for i=1,math.huge do
    if i ~= Debit.Value then
        return i
    end
    wait(0.1)
end
