--The name of the mod displayed in the 'mods' screen.
name = "叠加上限99"

--A description of the mod.
description = "修改叠加数量上限，默认为99，最大可为250！ Anydong友情汉化"

author = "ChaosMind42 Anydong 汉化"
 
version = "1.62.h.0.1"

api_version = 10

dont_starve_compatible = false		--是否支持DS  --原版
reign_of_giants_compatible = false	--是否支持SOG --巨人统治
dst_compatible = true				--是否支持DST --联机版

all_clients_require_mod = false		--是否所有人需要MOD
client_only_mod = false				--客户端是否支持
server_only_mod = true				--服务端是否支持

--This lets people search for servers with this mod by these tags
server_filter_tags = {"utility"}

-- ModConfiguration option
configuration_options =
{
	{
		name = "MAXSTACKSIZE",
		label = "最大叠加上限设置",
		options =	{
						{description = "20", data = 20},
						{description = "40", data = 40},
						{description = "60", data = 60},
						{description = "80", data = 80},
						{description = "99", data = 99},
						{description = "120", data = 120},
						{description = "150", data = 150},
						{description = "200", data = 200},
						{description = "250", data = 250},
					},

		default = 99,
	},
}

priority = 0.00374550642