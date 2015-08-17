#!/bin/bash
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles

# Found at
# http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/

#Help function to see if a command exists
command_exists () {
  type "$1" >/dev/null 2>/dev/null
}

#ORANGE='\033[0;33m'
LBLUE='\033[1;34m'
NC='\033[0m'

########## Variables
dir=~/dotfiles                    # dotfiles directory
olddir=~/.dotfiles_old             # old dotfiles backup directory
# list of files/folders to symlink in homedir
files="bashrc bash_aliases bash_setprompt gitconfig vimrc vim xcape_config xmodmap_swap_caps_and_escape xmodmap_swap_caps_and_ctrl Xresources lesskey tmux.conf custom/kth_tmux.conf"

##########

# create dotfiles_old in homedir
echo -e "${LBLUE}Creating $olddir for backup of any existing dotfiles in ~${NC}"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo -e "${LBLUE}Changing to the $dir directory${NC}"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file $olddir
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

echo -e "${LBLUE}Creating ~/.custom and ~/.identifiers folders and copying files to ~/.custom${NC}"
mkdir -p ~/.identifiers
mkdir -p ~/.custom
cp -r custom/* ~/.custom
echo "...done"

echo -e "${LBLUE}Reloading bash${NC}"
source ~/.bashrc
echo "...done"

echo -e "${LBLUE}Loading X resources (xrdb -load ~/.Xresources)${NC}"
xrdb -load ~/.Xresources
echo "...done"

echo -e "${LBLUE}Sourcing tmux (tmux source-file ~/.tmux.conf)${NC}"
tmux source-file ~/.tmux.conf
echo "...done"

echo -e "${LBLUE}Building lesskey (lesskey -o ~/.less ~/.lesskey)${NC}"
lesskey -o ~/.less ~/.lesskey
echo "...done"

if command_exists i3 ; then
	echo -e "${LBLUE}Creating symlink to i3 config (ln -s ~/.i3/config i3config)${NC}"
	ln -s ~/.i3/config i3config
	echo "...done"
fi

echo -e "${LBLUE}Calling xmodmap .xmodmap_swap_caps_and_escape and .xmodmap_swap_caps_and_ctrl${NC}"
xmodmap ~/.xmodmap_swap_caps_and_escape
xmodmap ~/.xmodmap_swap_caps_and_ctrl
echo "...done"

