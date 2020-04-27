ni.utils = {
	LoadFile = function(filename)
		if filename == nil then
			return
		end
		return ni.functions.LoadFile(filename)
	end,
	LoadFiles = function(files)
		for _, v in pairs(files) do
			if not ni.utils.LoadFile(v) then
				ni.debug.Log("Failed to load: " .. v, true)
			end
		end
	end,
	SplitStringByDelimiter = function(str, sep)
		if sep == nil then
			sep = "%s"
		end
		local t = {}
		for st in string.gmatch(str, "([^" .. sep .. "]+)") do
			table.insert(t, st)
		end
		return t
	end,
	SplitString = function(str)
		local t = {}
		for st in string.gmatch(str, "([^|]+)") do
			table.insert(t, st)
		end
		return t
	end,
	SplitStringToLower = function(str)
		str = string.lower(str)
		return ni.utils.SplitString(str)
	end,
	FindAnd = function(str)
		return str and (string.match(str, "&&") and true) or nil
	end
}
