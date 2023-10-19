FROM nlundin08/nvim
RUN apk add dotnet7-sdk
RUN cd ~/.config/nvim && git fetch --all && git checkout dotnet
