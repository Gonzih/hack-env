from base/archlinux

maintainer Max <gonzih at gmail dot com> Gonzih

run echo version 0.0.1

run pacman-key --init
run pacman-key --refresh-keys
run pacman -Suy emacs git tmux vim mc fish doge --noconfirm

run useradd -m gnzh

run rm /home/gnzh -rf
run git clone https://github.com/Gonzih/dotfiles.git /home/gnzh
run chown -R gnzh:gnzh /home/gnzh

user gnzh

env HOME /home/gnzh

# Spacemacs
run git clone --recursive https://github.com/syl20bnr/spacemacs ~/.emacs.d
run emacs --daemon && emacsclient --eval "(kill-emacs)"

# Fish
run mkdir -p ~/.config/
run git clone https://github.com/Gonzih/.fish.git ~/.config/fish

# MC
run git clone https://github.com/Gonzih/.mc.git ~/.mc

add update.sh /home/gnzh/update.sh
add start.sh /home/gnzh/start.sh

workdir /src

cmd sh ~/update.sh && sh ~/start.sh
