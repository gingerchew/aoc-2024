local utils = require('utils')

local lines = utils.get_lists('./days/day-3.txt');
local total = 0;

if not lines then
    print('Day 3: Could not find file')
    return
end

for x,y in string.gmatch(lines, "mul%((%d+),(%d+)%)") do
    if x then
        x = tonumber(x)
    end
    if y then
        y = tonumber(y)
    end
    total = total + (x * y)
end

print('Day 3: Part 1')
print(total)

for found in string.gmatch(lines, "(do%(%)don%'t%(%))") do
    print(found)
end