FROM alpine:3.9

RUN apk add --update git vim python3

ENV HOME /root
ENV TERM xterm-256color
ENV MINPAC $HOME/.vim/pack/minpac

RUN git clone https://github.com/k-takata/minpac.git $MINPAC/opt/minpac && \
    echo "packadd minpac" >> $HOME/.vimrc && \
    echo "call minpac#init()" >> $HOME/.vimrc

RUN git clone https://github.com/scrooloose/nerdtree.git $MINPAC/start/nerdtree && \
    echo "let NERDTreeIgnore=['node_modules$[[dir]]', '\.git$[[dir]]']" >> $HOME/.vimrc

RUN git clone https://github.com/chriskempson/base16-vim.git $MINPAC/start/base16-vim && \
    echo "colorscheme base16-oceanicnext" >> $HOME/.vimrc && \
    echo "syntax on" >> $HOME/.vimrc

RUN git clone https://github.com/tpope/vim-projectionist.git $MINPAC/start/vim-projectionist
RUN git clone https://github.com/sgur/vim-editorconfig.git $MINPAC/start/vim-editorconfig
RUN git clone https://github.com/pangloss/vim-javascript.git $MINPAC/start/vim-javascript
RUN git clone https://github.com/elzr/vim-json.git $MINPAC/start/vim-json
RUN git clone https://github.com/mxw/vim-jsx.git $MINPAC/start/vim-jsx

RUN git clone https://github.com/mattn/emmet-vim.git $MINPAC/start/emmet-vim && \
    echo "let g:user_emmet_leader_key='<Tab>'" >> $HOME/.vimrc && \
    echo "let g:user_emmet_settings = { 'javascript.jsx' : { 'extends' : 'jsx', }, }" >> $HOME/.vimrc

RUN git clone https://github.com/vim-airline/vim-airline.git $MINPAC/start/vim-airline && \
    git clone https://github.com/vim-airline/vim-airline-themes.git $MINPAC/start/vim-airline-themes && \
    echo "let g:airline_theme='base16_oceanicnext'" >> $HOME/.vimrc && \
    echo "let g:airline_powerline_fonts = 1" >> $HOME/.vimrc && \
    echo "let g:airline#extensions#tabline#enabled = 1" >> $HOME/.vimrc && \
    echo "let g:airline#extensions#ale#enabled = 1" >> $HOME/.vimrc

RUN git clone https://github.com/w0rp/ale.git $MINPAC/start/ale && \
    echo "let g:ale_sign_column_always = 1" >> $HOME/.vimrc && \
    echo "nmap <silent> [W <Plug>(ale_first)" >> $HOME/.vimrc && \
    echo "nmap <silent> [w <Plug>(ale_previous)" >> $HOME/.vimrc && \
    echo "nmap <silent> ]w <Plug>(ale_next)" >> $HOME/.vimrc && \
    echo "nmap <silent> ]W <Plug>(ale_last)" >> $HOME/.vimrc

# TO-DO: deoplete and fzf or ctrlp

RUN mkdir /mnt/src
WORKDIR /mnt/src

CMD vim
