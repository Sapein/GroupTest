gt_groups = {}
function gt_getGroup(name)
	for k, v in pairs(gt_groups) do
		if gt_groups[k].name == name then
			return k
		else 
			if k >= #gt_groups then
				return false
			end
		end
	end
end

gt_Group = {
	name = "", owner = "",
	members = {}, blocks = {},
	
	mt = {},
	
	new = function()
		local g = {}
		for k, v in pairs(gt_Group) do
			g[k] = v
		end
		return g
	end,
	
	addmember = function(self, member)
		local memAmount = #self.members + 1
		self.members[memAmount] = member
	end,
	
	checkMember = function(self, member)
		local memAmount = #self.members
		if memAmount <= 0 then
			return false
		else
			for k, v in pairs(self.members) do
				if self.members[k] == member then
					return true
				else 
					if k >= #self.members then
						return false
					end
				end
			end
		end
	end,
	
	removeMember = function(self, member)
		for k, v in pairs(self.members) do 
			if self.members[k] == member then
				table.remove(self.members, k)
				break
			else
			end
		end
	end
}

