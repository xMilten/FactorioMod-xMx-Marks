--item.lua

data:extend(
{
	{--White Tile
 
		type = "item",
		name = "white-tile",
		icon = "__xmx-marks__/white-tile.png",
		icon_size = 32,
		order = "b[concrete]-c[white-tile]",
		stack_size = 1000,
		place_as_tile =
			 {
			  result = "white-tile",
			  condition_size = 4,
			  condition = { "water-tile" }
			 }
    }
}
)