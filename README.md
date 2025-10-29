# K-Engine Datapack
A not-so-lightweight Minecraft datapack engine for map development.

## Modules
- `timers` – unified timers & stopwatches
- `hooks` – signal system for event-driven interactions
- `flush` – control unit for handling node deletion
- `inputs` – multiplayer friendly wasd sprint jump crouch detection and much more
- `dialogues` – dialogues with typing effects and tag system
## Planned
- `menus` – backend for interactive menus and dev shortcuts.
- `paths` – easy pathfinding for NPCs/entities.
- `cameras` – cinematic camera controls with easing and keyframes.
- `3D_triggers` – cubic triggers that detect entity enter/exit.

## Note / Disclaimer
K-Engine is a personal passion project and **not the most optimized way to develop Minecraft maps**.  
It relies heavily on macros and live in-game data management to allow real-time control of nodes, which can impact performance on large projects or slower PCs.

Check out MCBuild or Beet pre-compilers for a more optimized approach and workflow!

## Installation
1. Download the datapack ZIP.
2. Place it in `.minecraft/saves/<world>/datapacks/`.
3. Run `/reload` in the world.