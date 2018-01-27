
echo "source ~/dotfiles/.bashrc" >> ~/.bashrc

echo "[include]" >> ~/.gitconfig
echo "   path = ~/dotfiles/.gitconfig" >> ~/.gitconfig

echo "source ~/dotfiles/.vimrc" >> ~/.vimrc

echo "source ~/dotfiles/.tmux.conf" >> ~/.tmux.conf


if [ ! -d ~/.ssh ]; then
    cp -r .ssh ~/.ssh
else
    echo ".ssh folder already existed"
fi