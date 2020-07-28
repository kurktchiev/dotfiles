# dotfiles

This is all ZSH based so you need it as your primary shell:
```bash
brew install zsh
chsh -s /usr/local/bin/zsh
```
NOTE: OS X Big Sir and later come with ZSH built-in, but I prefer using the latest from brew as its part of my new machine workflow anyway

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
NOTE: aText https://trankynam.com/atext/ is a licensed app, it costs $5, but it is going to be the best $$ you have ever spent. Once you start it up, simply go into the snippets folder, select all on the files and open them with aText to import text insertion snippets.

Copy the `zshrc`, `p10k.zsh` and `tmuxinator/default.yml` files to your `$HOME/.`

You can now start a new iTerm session. I use its TMUX integration combined with Tmuxinator so to attach back or re-create my sessions in tmux simply do:
```bash
tmuxinator start default
```

I have placed `##MODIFY##` in all the dotfiles in places I generally think people will want their own modifications.
