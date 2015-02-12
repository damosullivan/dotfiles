# Dotfiles
Here are some dotfiles used by me, Damien, on a regular basis. I have put them on GitHub so I can easily pull them onto any machine I am using.

## vimrc
The _vimrc_ file was origionally a copy of a colegues (@pcarranza). I started by slimming it down, and trimmed it to what I needed and ,most importantly, what I understand. 

### Set Up
Here is how to set up your vim to use this rc file:

* Clone this repository into your home direcotry
```
git clone https://github.com/damosullivan/dotfiles.git ~/dotfiles
```
* Create a symbolic link from your *.vimrc*
```
ln -s dotfiles/vimrc .vimrc
```
* Open VI and install the plugins (you must first install [Vundle](https://github.com/gmarik/Vundle.vim))
```
:PluginInstall
```
