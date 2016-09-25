# This mod is not intended to work on it's own.
# It's just the core scripts to make wonderful things possible to other modders.

**Golemancer:** A golemancer is someone who specializes in Golemancy, that is, the building, design, maintenance, and usage of golems.
**Golem:** An artificially created being brought to life by supernatural means.

The scripts contained in this mod allow you animate structures that you create following a pattern by feeding an animation core with some resources.

**Pattern:** The particular form and materials that the structure must have before the animation process can be started.
**Animation core:** The hearth of the golem, if placed at the rigth spot of the rigth pattern, and feed with the right resources, it will bring the structure to life!

**For modders:** Tutorial to create your own golems.

1) Make a new mini-mod and require this one as dependency

2) Create a new .pattern file, it will contain an unique pattern including:
   * Name of the pattern
   * Blocks to be used
   * Layout of the blocks
   * Resources required to complete the animation
   * Result of the animation
Code:
```
{
    "name" : "greckan", -- The name of the pattern
    "offset" : [2, 6], -- The position of the core (2 rigth, 6 up from the lowest leftmost point)
    "blocksTable" : [
        false, -- Empty space
        "fleshblock",
        "corruptdirt",
        "bonematerial"
    ],
    "layoutTable" : { -- From bottom to top, left to rigth
        "1" : { "1" : 1, "2" : 2, "3" : 2, "4" : 1 },
        "2" : { "1" : 1, "2" : 2, "3" : 2, "4" : 1 },
        "3" : { "1" : 3, "2" : 2, "3" : 2, "4" : 3 },
        "4" : { "1" : 3, "2" : 4, "3" : 4, "4" : 3 },
        "5" : { "1" : 3, "2" : 4, "3" : 4, "4" : 3 },
        "6" : { "1" : 1, "2" : 2, "3" : 2, "4" : 1 },
        "7" : { "1" : 1, "2" : 2, "3" : 1, "4" : 1 }
    },
    "requiredResources" : { -- Resources the core requires to do the transformation (Only liquids at the moment)
        "1" : {
            "name" : "Liquid erchius fuel",
            "type" : "liquid", "id" : 11, "ammount" : 12
        }
    },
    "boundingBox" : [4, 7], -- Bounding box of the pattern
    "npcSpawn" : { -- Result of the animation (Only npc's at the moment
        "species" : "greckan",
        "npcType" : "villager"
    }
}
```
3) Create a new "Animation core", an standard object that simply has the following lines added to it:
Code:
```
{
  ...
  -- All standard common things of any object
  ...

  -- Only gol_main.lua at the moment, more to come :P
  "scripts" : [ "/scripts/golemancer/gol_main.lua" ],
  "scriptDelta" : 1,

  -- Array of patterns that the object can match
  "patterns" : ["/scripts/golemancer/patterns/ThePatternYouCreated.pattern"]
}
```
4) **DONE!** Launch Starbound, build the pattern, add the Animation core and ENJOY!
