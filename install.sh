pacman-mirrors -i -c China -m rank
#Only Usting and ustc

sed -i '$a [archlinuxcn]' /etc/pacman.conf
sed -i '$a SigLevel = Optional TrustedOnly' /etc/pacman.conf
sed -i '$a Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch' /etc/pacman.conf

pacman -Syy && pacman -S archlinuxcn-keyring
pacman -S zsh fcitx-im fcitx fcitx-sogoupinyin fcitx-configtool git vim clang lldb make cmake python-pip shadowsocks-qt5 tk --noconfirm
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
#curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
pwd
 
# vim .vimrc < EOF
# :PlugInstall
# EOF
# 
# cd ~/.vim/pluged/Youcompuleteme
# python install.py --all

pip install opencv-python matplotlib scipy pyserial
