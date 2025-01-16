
local IsServer = GLOBAL.TheNet:GetIsServer()
--local size = GetModConfigData("MAXSTACKSIZE")
local size = 250
local TUNING = GLOBAL.TUNING
TUNING.STACK_SIZE_LARGEITEM = size
TUNING.STACK_SIZE_MEDITEM = size
TUNING.STACK_SIZE_SMALLITEM = size
TUNING.STACK_SIZE_TINYITEM = size

if IsServer then
AddPrefabPostInit("rabbit",function(inst)
   if(inst.components.stackable == nil) then
      inst:AddComponent("stackable")
   end
   inst.components.inventoryitem:SetOnDroppedFn(function(inst)
        inst.components.perishable:StopPerishing()
        inst.sg:GoToState("stunned")
        if inst.components.stackable then
    	    while inst.components.stackable:StackSize() > 1 do
    	        local item = inst.components.stackable:Get()
    	        if item then
    	            if item.components.inventoryitem then
    	                item.components.inventoryitem:OnDropped()
    	            end
    	            item.Physics:Teleport(inst.Transform:GetWorldPosition() )
    	        end
    	    end
    	 end
    end)
end)
end