local color = require(xmx_path .. "lib/markColors")

data.raw.item["assembling-machine-1"].order = "a[assembling-machines]-a[xmx-mk1-assembling-machine]"
data.raw.item["assembling-machine-2"].order = "a[assembling-machines]-c[xmx-mk3-assembling-machine]"
data.raw.item["assembling-machine-3"].order = "a[assembling-machines]-e[xmx-mk5-assembling-machine]"

function changeXmxMarksAssemblingMachineItemIcons(mark, tint)
	data.raw.item["assembling-machine-" .. mark].icon = nil
	data.raw.item["assembling-machine-" .. mark].icons = {
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

changeXmxMarksAssemblingMachineItemIcons(1, 1)
changeXmxMarksAssemblingMachineItemIcons(2, 3)
changeXmxMarksAssemblingMachineItemIcons(3, 5)