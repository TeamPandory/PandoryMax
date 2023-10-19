# PandoryMAX

PandoryMAX is a collection of improvements and fixes for the ONEMORE Pandora 3D Max Pandora Aracde Box.

![PandoryMAX Screenshot](https://raw.githubusercontent.com/TeamPandory/PandoryMax/master/build/pandorymax.jpg)

## Fixes include:

- 4:3 aspect ratio (switchable)
- many optimizations for the built in emulators
- unlocked characters in MVC2
- bilinear blur removed (sharp pixels)
- overclock for the final burn emulator (no slowdown in Metal Slug games, smoother gameplay in many others)
- blood added to the Metal Slug games
- dipswitches enabled in arcade games (hold start)
- control fixes / improvements
- and much more

## Installation

- Backup your Pandora 3D Max Microsd to your computer.
- Download the zip file from the releases page
- Extract it to the `lib/` folder of your Pandora 3D Max MicroSD
- Start a game

## Updating an older version

To update PandoryMax, extract the latest release to your `lib/` folder and start a game. The update will take place automatically.

## Hacking

Have an improvement? [Fork](https://github.com/TeamPandory/PandoryMax/fork) our repository, make any changes you like and send us a pull request. Accepted pull requests go right in to the next release of PandoryMAX.

## License

All of PandoryMAX is licensed under the GPL2 with the exception of the included [sqlite3](https://github.com/TeamPandory/PandoryMax/blob/master/pandory/sqlite3) binary in the `pandory` folder, which is compiled using the [GCC Linaro 6.3.1 - 2017.05](https://releases.linaro.org/components/toolchain/binaries/6.3-2017.05/arm-linux-gnueabihf/) toolchain from commit [43fa051](https://github.com/sqlite/sqlite/commit/43fa051ec7c5a7d89e1f5f541a5cd34d53e07422) and is licensed as public domain. 
