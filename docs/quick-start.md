# Quick Start

This guide walks through setting up and running a UHC game using **UHC Control** from start to finish.  
It is intended for server admins and event organisers, including those running practice events for cross-community games.

If you follow this guide in order, you should be able to run a full UHC game without needing to understand the internal mechanics of the datapack.

---

## Prerequisites

Before starting, ensure that:

- You are running Minecraft: Java Edition on a supported version
- You have operator permissions on the server
- You are able to switch to Creative mode
- All players can join the server before the game starts

UHC Control is designed to manage **one game at a time per world**.

---

## Installation

1. Download the UHC Control datapack.
2. Place the datapack into your world’s `datapacks` folder.
3. Start or restart the world.
4. Verify the datapack is loaded by running `/datapack list`. 
5. UHC Control should appear in the list of enabled datapacks.

---

## Initial Setup

Once the datapack is installed and the world is loaded:

1. Switch to Creative mode: `/gamemode creative`
2. Run the setup function: `/function #uhc:admin/setup`

This will:
- Initialise UHC Control
- Apply required gamerules
- Give you the **UHC Control Book**

---

## The UHC Control Book

The **UHC Control Book** is the primary interface for configuring the game.

Important notes:

- Admins must remain in Creative mode while using the book
- All options are interactive
- Hover text explains what each option does
- Current settings are shown visually around the lobby

---

## Configuring the Game

Using the book, configure the game settings as required for your event.

Typical options include:

- World border size and timing
- Grace periods
- PvP enable timing
- Team configuration
- Enabled expansions

There is no required order - settings can be adjusted freely until the game starts.

---

## Teams and Players

Before starting the game:

- Ensure all players have joined the server
- Ensure players are assigned to the correct teams
- Confirm spectators are set correctly

Once the game has started, changing teams is not supported.

---

## Starting the Game

When setup is complete:

1. Confirm all players are ready.
2. Use the **Start** option in the UHC Control Book.

Starting the game will:

- Lock configuration options
- Begin the UHC game

From this point onward, the game is fully controlled by UHC Control.

---

## During the Game

While the game is running:

- UHC Control manages timing, borders, and game events automatically
- Admins should avoid manually changing gamerules or world settings
- Enabled expansions may introduce additional mechanics

If an issue occurs, admins can still use standard operator commands if necessary.

---

## Ending or Resetting a Game

Once the game has concluded, you may leave the world as-is for review or screenshots, or reset before the next game.

To safely uninstall UHC Control, run 
`/function #uhc:admin/uninstall`.
Then delete the datapack from the world’s datapacks folder.

> **Important:** Gamerules and world spawn are not reverted on uninstall.

---

## Next Steps

Once you are comfortable running a basic game, you may want to explore:

- [Configuration & Options](./docs/configuration.md)
- [Expansions](./docs/expansions.md)
- [Creating Expansions](./docs/creating-expansions.md)

If you are running an event and have questions, support is available via the [Discord server](https://discord.gg/92wPVejgYB).
