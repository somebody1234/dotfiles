ssh-agent /bin/zsh
ssh-add ~/.ssh/id_rsa
mkdir -p ~/.config/nvim/
for f in $(ls -d ~/dotfiles/.*); do ln -sf $f ~/; done && ls -al ~/
ln -sf ~/dotfiles/.vimrc ~/.config/nvim/init.vim
ln -sf ~/dotfiles/Templates ~/Templates

