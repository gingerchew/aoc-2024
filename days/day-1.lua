local utils = require 'utils'

local lines = utils.get_lists('./days/day-1.txt');

if not lines then return end
local list_1 = {}
local list_2 = {}
for item_1,item_2 in string.gmatch(lines, "(%d%d%d%d%d)   (%d%d%d%d%d)") do
    table.insert(list_1, tonumber(item_1))
    table.insert(list_2, tonumber(item_2))
end

table.sort(list_1, function(a, b) return a < b end)
table.sort(list_2, function(a, b) return a < b end)

local solution = 0;

for k,v in ipairs(list_1) do
    solution = solution + math.abs(v - list_2[k])
end
print('Day 1: Part 1');
print(solution)

local function count_items(t, value)
    local count = 0
    for _,v  in ipairs(t) do
        if v == value then
            count = count + 1
        end
    end

    return count * value
end
solution = 0
for _,v in ipairs(list_1) do
    solution = solution + count_items(list_2, v)
end
print('Day 1: Part 2')
print(solution)

