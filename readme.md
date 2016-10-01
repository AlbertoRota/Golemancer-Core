# Golemancy - Core
__*Core scripts for the implementation of golemancy in Sctarbound*__

>**TODO:** Add main image

## Disclaimer
This is a modders resource script, **It's not intended to work on it's own**, but to help other modders in adding their own golems/mechanics easily.

All the examples provided are intended to be minimal examples to help other modders to understand how to use this scripts and to showcase their possibilities, they are no way intended to be balanced, fun, usable o something similar.
## Table of contents
[TOC]
## Introduction
### Golemancy in the distant past
A discipline as old as the life itself, **Golemancy** has being known in different eras as a _science_, an _art_, a _mith_... but always as the process of infusing live where it wasn't before.

Given the wide nature of it's applications, **Golemancy** itself has being known under different names depending of the main focus of the golemancer:
- **Golemancy** is the most ancient and generic name, used by those who _focused on bring non-living thins to life_.
- **Necromancy** was a subtle shift, trying to _re-infuse with live things that were alive once_.
- **Spiritism** was the branch _focused on bring life for other planes/dimension into our's_.
- **Medicine** is another well known name, used by those who _focus on keeping already infused beings alive_.
- **Bio-technology** is one of the most recent names, used by those who _focus on modifying living beings into another beings_.

Similarly, Golemancers has being known by different names, depending mainly of their focus and motivations:
- **Golemancer** is the most ancient a boarder term, given to that that dedicate themselves to _Golemancy_ on it most broad sense.
- **Necromancer** has being historically a despective term for those who focused on _Necromancy_, paradoxically, their studious were among the most dedicated ones.
- **Summoner** was the name of _Spiritism_ practitioners, sadly, summoned beings usually are un-cooperative, witch make the summoner's lifespan well under average when compared to others of their time.
- **Medics**, **Doctors**, **Surgeons**, and another bunch of terms are used to design _Medicine_ practitioners, depending of their level and competency.
- **Genetic engineer** and **Stetic surgeon** are the most used names of _Biotechnology_ practitioners, but other terms are being used as research is done and the main focus shift's from one thing to another.

### Golemancy in the near past
We were so used to it that we almost forgot it's existence, we mostly stopped their study and almost no one could appreciate it's magnificence.

Every child is a master golemancy work of it's parents, every surgeon is a skilled golemancer...

Damm! Every single cell of our body is a magnificent golem, not only infused with live, but also able to infuse matter with live, producing more outstanding golems, being at the same time golem, golemancer and part of us!

And even with that, no one cared, time of **Golemancers** were long passed, with the only exceptions of _Medicine_ and _Bio-technology_, all investigation routes were halted, and even on this branches, you should be extremely cautious on what you studied, risking yourself to persecution, being called "mad", "stupid" or "monster".

Fortunately, exceptional individuals surpass their equals, showing curiosity, interest and exceptional dexterity on golemancy, that's true for every era, for every living being.
### Golemancy today
Recent events has lead to a resurgence of golemancy, we've seen, among other things, sentient plants, intelligent robots, living stars, and tentacle monsters of other dimensions... life being infused on unexpected things is no longer a mad's mind idea, but a fact.

And supported by this, **Golemancy** is now resurging.

## Golem animation core
### Lore
Where science meets magic, where possible meets the impossible, the result of a Golemancer's best effort: The **animation core**

The **animation core** is where it all starts, being a generic term, it designs everything that can start the process of infusing live, and as such, they have trillions of forms, sizes and working principles.

Even with that, the infusion process shares strong similarities between them all:
- _The **animation core** is a must_, by its own definition, no life can be infused without one.
- It should be _surrounded be the right matter to infuse_, even in the process of infusing live, you can't get something out of nothing.
- It should be _fueled by the right fuel_, from _water_ to _blood_, from _coal_ to _your own soul_, it will depend on the **animation core** working principle.
- The Golemancer should activate the **animation core**, if everything has been done correctly, the infusion will begin.

### Examples
GolTest-AnimCore-01 | GolTest-AnimCore-02
------------ | -------------
![GolTest-AnimCore-01](http://community.playstarbound.com/attachments/goltest-animcore-01-gif.165457/) | ![GolTest-AnimCore-02](http://community.playstarbound.com/attachments/goltest-animcore-02-gif.165458/)
[Download code](http://community.playstarbound.com/attachments/goltest-animcore-01-zip.165365/) | [Download code](http://community.playstarbound.com/attachments/goltest-animcore-02-zip.165367/)

### Code explained
#### Patterns
Pattern files are the main configuration files used to specify the animation core requisites and behavior .
You can take a look of how to use then in the examples, they are quite simple.

Parameter | Explanation
------------ | ------------
"**offset**" | Where the right-most, lowermost part of the object will be on the pattern.
"**blocksTable**" | The table with all the in-game names of the blocks, you can use as many as you need, "_false_" means "_no block_".
"**layoutTable**" | Table defining the layout to match, from bottom to top, from left to right, the values reference blocks defined in the "_blocksTable_", the object itself counts as "_false_"
"**requiredResources**" | Array of required resources, could be none, could be multiple, read the examples to see how to define them.
"**boundingBox**" | The size of the pattern, is the same as the size of "_layoutTable_"
"**xxxxSpawn**" | The thing to spawn once the infusion is completed, read the examples to see how to define them.

#### Animation cores
In order to correctly read and use pattern files, you need to attach the correct script to the object and to point the object what patters should check.
As simple as that, for any doubt, you can see how the examples are patched.

## Golem evolutions
### Lore
Life in inherently unstable, we all know that.
Children become adults, ovules become babies, seeds become plants and flowers transform into fruits... everything changes.

That's specially true for artificially infused beings, given the complexity of the process, their inherent instability is far greater, making radical changes possible and commonplace between them.

### Examples
GolTest-Evolve-01 | GolTest-Evolve-02
------------ | -------------
![GolTest-Evolve-01](http://community.playstarbound.com/attachments/goltest-evolve-01-gif.165505/) | ![GolTest-Evolve-02](http://community.playstarbound.com/attachments/goltest-evolve-02-gif.165507/)
[Download code](http://community.playstarbound.com/attachments/goltest-evolve-01-zip.165506/) | [Download code](http://community.playstarbound.com/attachments/goltest-evolve-02-zip.165508/)

### Code explained
#### Evolutions
Evo files are the main configuration files used to specify the evolution requisites and results.
You can take a look of how to use then in the examples, they are quite simple.
Parameter | Explanation
--------- | -----------
"**requiredResources**" | Array of required resources, could be none, could be multiple, read the examples to see how to define them.
"**xxxxSpawn**" | The thing to spawn once the infusion is completed, read the examples to see how to define them.

#### Evolutionary golem
In order to correctly read and use evo files, you need to attach the correct script to the monster and to point what evolutions should check.
As simple as that, for any doubt, you can see how the examples are patched.
