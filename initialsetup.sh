sudo apt-get update
sudo apt-get -y install git xcape openssh-server vim-gnome tmux
sudo apt-get -y install curl ack-grep silversearcher-ag
sudo apt-get install silversearcher-ag

sudo apt-get -y install xsel #xsel -p to get primary, pipe to it to set primary
sudo apt-get -y install zsh

sudo apt-get -y install zathura #pdf viewer with vim keybindings
ZATHRCFILE=/etc/zathurarc
[ ! -f $ZATHRCFILE ] && echo "writing to $ZATHRCFILE" && echo "set scroll-step 100" > $ZATHRCFILE

sudo apt-get -y install python-pip
#sudo apt-get -y install texlive texlive-latex-base # Around 300 MB?
#sudo apt-get -y install texlive-full  # 3 GB...

git config --global user.email "rasmus.ansin@gmail.com"
git config --global user.name "Rasmus Ansin"
git config --global push.default simple
#use less as a pager, but only if output is longer than the screen
git config --global --replace-all core.pager "less -F -X"

#Make a copy of the default ssh config
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.factory-defaults
mkdir -p ~/.ssh

#Download hhighlighter, an ack-based highlighter (e.g. ./a.out | h -i warning)
curl -s https://raw.githubusercontent.com/paoloantinori/hhighlighter/master/h.sh -o hhighlighter.sh

#Remove annoying folders that come with ubuntu
rmdir ~/Music
rmdir ~/Pictures
rmdir ~/Documents
rmdir ~/Videos
rmdir ~/Desktop

mkdir -p ~/pyy
#cd ~/pyy
#git clone git@github.com:Ran4/ei.git
#sudo cp ~/pyy/ei/ei.py /usr/lib/python2.7/

#sudo apt-get -y install python-tk #used for clip.py

#FZF, a Fuzzy file finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

#sudo apt-get --reinstall install msttcorefonts
#sudo apt-get --reinstall install ttf-mscorefonts-installer

#Installing oh-my-zsh
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
