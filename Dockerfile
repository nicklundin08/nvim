FROM alpine:edge
RUN apk add git lazygit neovim ripgrep alpine-sdk --update
RUN git clone https://github.com/nicklundin08/nvim.git ~/.config/nvim 

