mkdir backups


# Setup
CURRENT=`pwd`
cd ~

# Backup
mv .vimrc $CURRENT/backup
mv .vim $CURRENT/backups

# Sym Link
ln -s $CURRENT/vimrc .vimrc
ln -s $CURRENT/vim .vim

# Run Commands
vim +PluginInstall +qall
