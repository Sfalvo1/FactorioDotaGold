-- to copy everything about an object, use deep copy
-- local goldSound = table.deepcopy(data.raw["sound"])

-- set name for new prototype
data:extend(
{
   {
   type = "sound",
   name = "gold-sound",
   filename = "__dotagold__/coins.ogg",
   volume = 1
   },
})