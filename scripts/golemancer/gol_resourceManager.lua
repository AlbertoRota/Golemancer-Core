-- Consume the resources specified in "pattern.requiredResources"
-- Returns "consuming", "allConsumed" or "cantConsume"
function consumeResources(pattern)
  local hasConsumed = false

  for _, resource in pairs(pattern.requiredResources) do
    if resource.type == "liquid" then
      hasConsumed = consumeLiquid(resource) or hasConsumed
    end
  end

  if allConsumed(pattern) then
    return "allConsumed"
  else
    return hasConsumed and "consuming" or "cantConsume"
  end

end

-- Try to consume liquid, returns false if cant consume the liquid
function consumeLiquid( resource )
  liqTable = world.liquidAt(object.position())
  if liqTable and liqTable[1] == resource.id and liqTable[2] >= 0.99 then
    self.consumedTable[resource.name] = (self.consumedTable[resource.name] or 0) + world.destroyLiquid(self.position)[2]
    return true
  else
    return false
  end
end

-- Checks if all pattern resources has being consumed
function allConsumed(pattern)
  local consumed = true
  for _, resource in pairs(pattern.requiredResources) do
    consumed = consumed and self.consumedTable[resource.name] and self.consumedTable[resource.name] >= resource.ammount
  end
  return consumed
end
