init.vim is my personal configuration for neovim.

I am also using a GUI for neovim called NEOVIDE.

The init.vim file sets the Consolas font for gui applications, when using Windows that's fine, but for MacOS and Linux the font installation might be required (the font is in the same folder as the init.vim to facilitate).

Currently neovide has some UI improvements that are under development. To enable these fetures it is needed to create a environment variable called NEOVIDE_MULTIGRID. The way to do it depends on the operating system, the value of the variable doesn't matter.



For a fresh installation of NEOVIM follow the basic steps:
* Install Neovim with default settings using the official tutorial for your system
* Create the default config folder (with neovim opened use the command "-h nvim.txt" and follow the first step)
* Install the Consolas font available here if your system doesn't have it
* Copy/GitClone the init.vim available here to your config folder (the command ":echo stdpath('config') will show the correct location)
* Install Neovide with default settings using the offical tutorial your system
* Create an environment variable called "NEOVIDE_MULTIGRID" (the value of the variable is not important)
* Running neovim, execute the following command ":PlugInstall"
* Running neovim, execute the following command ":OmniSharpInstall"
* After restarting neovim the collorscheme catppuccin should be working
* That's all (for now)
