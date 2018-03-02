# link files
echo "link files.."
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.tmux.conf ~/.tmux.conf
ln -s $(pwd)/.bashrc ~/.bashrc

# install vim plugins
echo "install vim plugins.."
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/majutsushi/tagbar.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/bling/vim-airline
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/kshenoy/vim-signature.git
