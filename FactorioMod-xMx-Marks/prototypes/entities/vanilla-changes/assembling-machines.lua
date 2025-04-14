local color = require(xmx_path .. "lib/markColors")

data.raw["assembling-machine"]["assembling-machine-1"].next_upgrade = "xmx-mk2-assembling-machine"
data.raw["assembling-machine"]["assembling-machine-2"].next_upgrade = "xmx-mk4-assembling-machine"
data.raw["assembling-machine"]["assembling-machine-3"].next_upgrade = "xmx-mk6-assembling-machine"

data.raw["assembling-machine"]["assembling-machine-1"].speed = 0.5
data.raw["assembling-machine"]["assembling-machine-2"].speed = 1.0
data.raw["assembling-machine"]["assembling-machine-3"].speed = 1.5

data.raw["assembling-machine"]["assembling-machine-1"].energy_source.emissions_per_minute = 5
data.raw["assembling-machine"]["assembling-machine-2"].energy_source.emissions_per_minute = 3
data.raw["assembling-machine"]["assembling-machine-3"].energy_source.emissions_per_minute = 1

data.raw["assembling-machine"]["assembling-machine-1"].energy_usage = "75kW"
data.raw["assembling-machine"]["assembling-machine-2"].energy_usage = "225kW"

data.raw["assembling-machine"]["assembling-machine-1"].energy_source = {
    type = "burner",
    fuel_category = "chemical",
    effectivity = 1,
    fuel_inventory_size = 1,
    emissions_per_minute = 5
}

function changeXmxMarksAssemblingMachineIcons(mark, tint)
	data.raw["assembling-machine"]["assembling-machine-" .. mark].icons = {
		{
			icon = "__base__/graphics/icons/assembling-machine-" .. mark .. ".png"
		},
		{
			icon = xmx_icons_entities_path .. "assembling-machines/assembling-machine-" .. mark .. "-mask.png",
			tint = color.paint(tint)
		},
		{
			icon = xmx_icons_entities_path .. "assembling-machines/assembling-machine-" .. mark .. "-rust.png",
		}
	}
end

changeXmxMarksAssemblingMachineIcons(1, 1)
changeXmxMarksAssemblingMachineIcons(2, 3)
changeXmxMarksAssemblingMachineIcons(3, 5)

function changeXmxMarksAssemblingMachineAnimations(mark, tint, shadows)
	data.raw["assembling-machine"]["assembling-machine-" .. mark].animation = {
		layers = {
			[1] = {
				filename = xmx_image_assembling .. "assembling-machine-" .. mark .. "/assembling-machine-" .. mark .. ".png",
				priority="high",
				width = 83,
				height = 106,
				frame_count = 32,
				line_length = 8,
				shift = util.by_pixel(0, -8),
				hr_version = {
					filename = xmx_image_assembling .. "assembling-machine-" .. mark .. "/hr-assembling-machine-" .. mark .. ".png",
					priority="high",
					width = 165,
					height = 212,
					frame_count = 32,
					line_length = 8,
					shift = util.by_pixel(0, -8),
					scale = 0.5
				}
			},
			[2] = {
				filename = xmx_image_assembling .. "assembling-machine-mask.png",
				priority = "high",
				width = 83,
				height = 106,
				frame_count = 1,
				line_length = 1,
				repeat_count = 32,
				shift = util.by_pixel(0, -8),
				tint = color.paint(tint),
				hr_version = {
					filename = xmx_image_assembling .. "assembling-machine-" .. mark .. "/hr-assembling-machine-" .. mark .. "-mask.png",
					priority = "high",
					width = 165,
					height = 212,
					frame_count = 1,
					line_length = 1,
					repeat_count = 32,
					shift = util.by_pixel(0, -8),
					scale = 0.5,
					tint = color.paint(tint)
				}
			},
			[3] = {
				filename = xmx_image_assembling .. "assembling-machine-rust.png",
				priority = "high",
				width = 83,
				height = 106,
				frame_count = 1,
				line_length = 1,
				repeat_count = 32,
				shift = util.by_pixel(0, -8),
				hr_version = {
					filename = xmx_image_assembling .. "assembling-machine-" .. mark .. "/hr-assembling-machine-" .. mark .. "-rust.png",
					priority = "high",
					width = 165,
					height = 212,
					frame_count = 1,
					line_length = 1,
					repeat_count = 32,
					shift = util.by_pixel(0, -8),
					scale = 0.5
				}
			},
			[4] = shadows
		}
	}
end

function shadows_one()
	return {		
		filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
		priority = "high",
		width = 95,
		height = 83,
		frame_count = 1,
		line_length = 1,
		repeat_count = 32,
		draw_as_shadow = true,
		shift = util.by_pixel(8.5, 5.5),
		hr_version = {
			filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1-shadow.png",
			priority = "high",
			width = 190,
			height = 165,
			frame_count = 1,
			line_length = 1,
			repeat_count = 32,
			draw_as_shadow = true,
			shift = util.by_pixel(8.5, 5),
			scale = 0.5
		}		
	}
end

function shadows_two()
	return {		
		filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-shadow.png",
		priority = "high",
		width = 98,
		height = 82,
		frame_count = 32,
		line_length = 8,
		draw_as_shadow = true,
		shift = util.by_pixel(12, 5),
		hr_version = {
			filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-shadow.png",
			priority = "high",
			width = 196,
			height = 163,
			frame_count = 32,
			line_length = 8,
			draw_as_shadow = true,
			shift = util.by_pixel(12, 4.75),
			scale = 0.5
		}		
	}
end

function shadows_three()
	return {		
		filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow.png",
		priority = "high",
		width = 130,
		height = 82,
		frame_count = 32,
		line_length = 8,
		draw_as_shadow = true,
		shift = util.by_pixel(28, 4),
		hr_version = {
			filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-shadow.png",
			priority = "high",
			width = 260,
			height = 162,
			frame_count = 32,
			line_length = 8,
			draw_as_shadow = true,
			shift = util.by_pixel(28, 4),
			scale = 0.5
		}		
	}
end

changeXmxMarksAssemblingMachineAnimations (1, 1, shadows_one())
changeXmxMarksAssemblingMachineAnimations (2, 3, shadows_two())
changeXmxMarksAssemblingMachineAnimations (3, 5, shadows_three())