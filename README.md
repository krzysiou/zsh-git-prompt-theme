# zsh-git-prompt-theme
It is my own spin-off of default zsh theme originally created by [Robby](https://github.com/robbyrussell).
I made some changes regarding directory path length and color scheme. However the main purpose of this override suddenly appeared after reading [this](https://gist.github.com/AMoreaux/fb8df10b0de1d89fea45d8da5e467a86) It is to make your experience with git much easier and pleasing by adding few more quality of life features similar to the default git branch name displayed next to the directory prompt.

## Installation
First of all you will need to acquire default version of zsh. Just follow the guide provided [here](https://github.com/ohmyzsh/ohmyzsh). After the installation simply enter ```~/.oh-my-zsh``` directory and locate ```custom``` folder. 

![Zrzut ekranu 2022-01-8 o 20 34 34](https://user-images.githubusercontent.com/60892747/148660113-6d0a1a71-aadc-45f9-be6e-353432b89b06.png)

In here you will be able to add your custom plugins and themes by placing them in according folders. Copy [theme file](gitprompt.zsh-theme) into the ```~/.oh-my-zsh/custom/themes``` directory. The only thing left to do is activate the theme by editing ```~/.zshrc``` file. Find the ```ZSH_THEME``` option located inside said file and change its value to ```"gitprompt"```. Restart your zsh client and enjoy the theme!

## Changes

The colors where changed to match the much more appealing to me green-ish look. The length of current directory prompt was also changed, now it fully displays current path to current location in opposition to original theme in which the path was displayed only by the name of current directory.

![Zrzut ekranu 2022-01-8 o 22 16 52](https://user-images.githubusercontent.com/60892747/148660258-43cf6e91-023b-4c8b-9eeb-9606958ebb45.png)

The biggest change that differs the default theme from my override regards the display of basic git info. First of all when you change files and save them in your IDE the prompt will display yellow ```!``` followed by a number indicating the combined amount of insertions and deletions in various files that you edited and saved on your local computer but have not yet added to the commit.

![Zrzut ekranu 2022-01-8 o 21 42 46](https://user-images.githubusercontent.com/60892747/148660351-74d87cbe-ef40-4c9d-b96d-0c6de88a805c.png)

After you add those saved files to your commit the prompt changes to yellow ```+``` and a number that represents amount of files added to current commit.

![Zrzut ekranu 2022-01-8 o 21 42 36](https://user-images.githubusercontent.com/60892747/148660464-4a39e378-8b69-420f-85aa-4241e20c7ce4.png)

Last feature that differs from default theme would be the indicator representing amount of commits ready to push. After commiting your changes and adding commit message the prompt will change to green ```✓``` with number beside it. 

![Zrzut ekranu 2022-01-8 o 21 43 40](https://user-images.githubusercontent.com/60892747/148660560-a5311443-95c5-48bc-9659-67b1a8849092.png)

Now you can easily edit your code and keep track of current changes!
