# dotfiles

This is all ZSH based so you need it as your primary shell:
NOTE: OS X Big Sir and later come with ZSH built-in, but I prefer using the latest from brew as its part of my new machine workflow anyway
```bash
brew install zsh
chsh -s /usr/local/bin/zsh
```

The prompt itself is based on powerlevel10k https://github.com/romkatv/powerlevel10k
```bash
brew install romkatv/powerlevel10k/powerlevel10k
```
NOTE: I provide my own `p10k.zsh` which customizes the theme to my liking, but if you would like to see what the theme author meant for things to look and behave like feel free to run `p10k configurator` and generate your own `p10k.zsh` file. 

I use a few other tools to make shell life easier so go ahead and install those as well:
```bash
brew install percol fasd mackup tmuxinator
brew cask install iterm2 atext
```
NOTE: aText https://trankynam.com/atext/ is a licensed app, it costs $5, but it is going to be the best $$ you have ever spent.

Copy the `zshrc` and `p10k.zsh` files to your `$HOME/.`

I have placed `##MODIFY##` in all the dotfiles in places I generally think people will want their own modifications.
