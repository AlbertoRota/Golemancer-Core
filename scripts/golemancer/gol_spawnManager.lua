function spawn(pattern)
  local initialPosition = vec2.add(self.position, {-pattern.offset[1], -pattern.offset[2]})
  local spawnPosition = vec2.add(initialPosition, {pattern.boundingBox[1]/2, pattern.boundingBox[2]/2})
  spawnResult(pattern, spawnPosition)
end

function evolve(evolution)
  status.setResource("health", 0)
  spawnResult(evolution, self.position)
end

function spawnResult(result, position)
  if result.npcSpawn then
    world.spawnNpc(position, result.npcSpawn.species, result.npcSpawn.npcType, world.threatLevel())
  end
  if result.monsterSpawn then
    world.spawnMonster(result.monsterSpawn.type, vec2.add(position, {0, 3}))
  end
  if result.itemSpawn then
    world.spawnItem(result.itemSpawn.name, position)
  end
end
