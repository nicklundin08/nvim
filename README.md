# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.


## Try it in docker


Dotnet image with sandbox repo
```
docker run -w /root -it --rm \
    nlundin08/nvim:dotnet sh -uelic \ '
        cd ~/.config/nvim && git fetch --all && 
        git clone https://github.com/nicklundin08/sandbox.git /workspace && cd /workspace &&
        /bin/sh'
```

With SSH and git configs
```
docker run -w /root -it --rm \
    -v /home/nick/.ssh/:/root/.ssh \
    nlundin08/nvim:dotnet sh -uelic \ '
        apk add openssh --update
        git config --global user.email "your@email.here" && git config --global user.name "Your Name" &&
        cd ~/.config/nvim && git fetch --all && 
        git clone git@github.com:nicklundin08/sandbox.git /workspace && cd /workspace &&
        /bin/sh'
```