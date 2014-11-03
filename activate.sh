mkdir backups


# Setup
CURRENT=$(pwd)
cd ~

# Backup
mv .vimrc $CURRENT/backup
mv .vim $CURRENT/backups
mv Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings $CURRENT/backups
mv Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings $CURRENT/backups

# Sym Link
ln -s $CURRENT/vimrc .vimrc
ln -s $CURRENT/vim .vim

cd Library/Application\ Support/Sublime\ Text\ 3/Packages/User
ln -s ~/dotfiles/sublime/Preferences.sublime-settings Preferences.sublime-settings
ln -s ~/dotfiles/sublime/Package\ Control.sublime-settings Package\ Control.sublime-settings

#Back to dotfiles dir
cd $CURRENT

# Run Commands
vim +PluginInstall +qall
