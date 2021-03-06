#!/usr/bin/env bash

function ask_yes_or_no() {
    #found at http://stackoverflow.com/questions/1885525/how-do-i-prompt-a-user-for-confirmation-in-bash-script
    #Usage example:
    #if [[ "no" == $(ask_yes_or_no "Are you sure?") || \
    #      "no" == $(ask_yes_or_no "Are you *really* sure?") ]]
    #then
    #    echo "Skipped."
    #    exit 0
    #fi
    read -p "$1 [y]es/[N]o: "
    case $(echo $REPLY | tr '[A-Z]' '[a-z]') in
        y|yes) echo "yes" ;;
        *)     echo "no" ;;
    esac
}

#Help function to see if a command exists
command_exists () {
  type "$1" >/dev/null 2>/dev/null
}

if command_exists apt-get ; then
    if [[ "yes" == $(ask_yes_or_no 'Install applications via apt-get?')  ]]
    then
        echo "Installing...."
        ~/dotfiles/apt_get_installs.sh
    else
        echo "Not doing apt-get install."
    fi
    
    #Remove annoying folders that come with ubuntu
    rmdir ~/Music
    rmdir ~/Pictures
    rmdir ~/Documents
    rmdir ~/Videos
    rmdir ~/Desktop
    
    xdg-mime default feh.desktop image/jpeg
fi

sudo pip3 install virtualenv

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo 'Detected OS X, calling ~/dotfiles/mac/initialsetup_mac.sh'
    ~/dotfiles/mac/initialsetup_mac.sh
fi

if [ -f "/etc/arch-release" ]; then
    echo 'Detected Arch, calling ~/dotfiles/arch/initalsetup_arch.sh'
    ~/dotfiles/arch/initialsetup_arch.sh
fi

echo "Installing fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

#install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Changing shell to zsh..."
sudo chsh -s $(which zsh)

echo 'Configuring git'
git config --global user.email "rasmus.ansin@gmail.com"
git config --global user.name "Rasmus Ansin"
git config --global push.default simple
#use less as a pager, but only if output is longer than the screen
git config --global --replace-all core.pager "less -F -X"

#Create some default folders
echo 'Creating some default folders'
mkdir -p ~/.ssh
mkdir -p ~/other
mkdir -p ~/git/other
mkdir -p ~/pyy
