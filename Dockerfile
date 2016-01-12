FROM ubuntu:14.04
RUN apt-get update && apt-get -y install vim git
RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ADD vimrc /root/.vimrc
RUN vim +PluginInstall +qall
