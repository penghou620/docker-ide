FROM ubuntu:14.04
RUN curl -sL https://deb.nodesource.com/setup_5.x | bash -
RUN apt-get update && apt-get -y install vim git build-essential cmake nodejs python2.7 python2.7-dev 
RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ADD vimrc /root/.vimrc
RUN vim +PluginInstall +qall && cd ~/.vim/bundle/YouCompleteMe && python2.7 ./install.py --clang-completer

RUN apt-get update && apt-get -y install tmux
ADD tmux.conf /root/.tmux.conf
