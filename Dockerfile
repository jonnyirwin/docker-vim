FROM alpine:3.9

RUN apk add --update git vim python3 python3-dev bash build-base py-pip nodejs npm

ENV HOME /root
ENV TERM xterm-256color
ENV MINPAC $HOME/.vim/pack/minpac
ENV PATH $MINPAC/start/fzf/bin:$PATH
ENV FZF_DEFAULT_COMMAND 'git ls-files'

RUN git clone https://github.com/k-takata/minpac.git $MINPAC/opt/minpac && \
    git clone https://github.com/scrooloose/nerdtree.git $MINPAC/start/nerdtree && \
    git clone https://github.com/chriskempson/base16-vim.git $MINPAC/start/base16-vim && \
    git clone https://github.com/tpope/vim-projectionist.git $MINPAC/start/vim-projectionistc && \
    git clone https://github.com/sgur/vim-editorconfig.git $MINPAC/start/vim-editorconfigc && \
    git clone https://github.com/pangloss/vim-javascript.git $MINPAC/start/vim-javascriptc && \
    git clone https://github.com/elzr/vim-json.git $MINPAC/start/vim-jsonc && \
    git clone https://github.com/mxw/vim-jsx.git $MINPAC/start/vim-jsxc && \
    git clone https://github.com/mattn/emmet-vim.git $MINPAC/start/emmet-vim && \
    git clone https://github.com/vim-airline/vim-airline.git $MINPAC/start/vim-airline && \
    git clone https://github.com/vim-airline/vim-airline-themes.git $MINPAC/start/vim-airline-themes && \
    git clone https://github.com/w0rp/ale.git $MINPAC/start/ale && \
    git clone https://github.com/junegunn/fzf.git $MINPAC/start/fzf && \
    git clone https://github.com/junegunn/fzf.vim.git $MINPAC/start/fzf.vim && \
    git clone https://github.com/Shougo/deoplete.nvim.git $MINPAC/start/deoplete.nvim && \
    git clone https://github.com/roxma/nvim-yarp.git $MINPAC/start/nvim-yarp && \
    git clone https://github.com/roxma/vim-hug-neovim-rpc.git $MINPAC/start/vim-hug-neovim-rpc && \
    git clone https://github.com/carlitux/deoplete-ternjs $MINPAC/start/deoplete-ternjs && \
    $MINPAC/start/fzf/install --bin && \
    pip3 install neovim && \
    npm install -g tern && \
    mkdir /mnt/src

WORKDIR /mnt/src

RUN npm install prettier eslint && npm install

COPY ftplugin/jsx.vim $HOME/.vim/after/ftplugin/jsx.vim
COPY .vimrc $HOME/.vimrc

CMD vim
