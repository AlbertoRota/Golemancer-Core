function spawn(pattern)
  local initialPosition = vec2.add(self.position, {-pattern.offset[1] - 1, -pattern.offset[2] - 1})
  local spawnPosition = vec2.add(initialPosition, {pattern.boundingBox[1]/2, pattern.boundingBox[2]/2})
  if pattern.npcSpawn then
    world.spawnNpc(spawnPosition, pattern.npcSpawn.species, pattern.npcSpawn.npcType, world.threatLevel())
  end
end
