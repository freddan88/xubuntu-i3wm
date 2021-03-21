## xubuntu-i3wm

NOT COMPLETE!!!

> Guide to install xubuntu with tools/software and the i3 tiling window manager

OBS! Reboot your computer after upgrading to load new Linux-kernels

For VM:s you should install the guest extensions and below software

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install linux-headers-$(uname -r) make gcc dkms build-essential -y
```

---

1. Update, install some dependencies and upgrade packages

```bash
sudo apt update && sudo apt install zsh git wget curl -y && sudo apt upgrade -y
```

2. Install OH MY ZSH and zsh-autosuggestions plugin

```bash
cd && sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

3. Install the latest version of nvm (Node Version Manager)

```bash
cd && wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
```

4. Download and run the script to install all software that we are going to need

```bash
mkdir -p /tmp/i3xc && cd /tmp/i3xc
wget https://raw.githubusercontent.com/freddan88/xubuntu-i3wm/main/script/xubuntu-i3.sh
sudo chmod 755 xubuntu-i3.sh  && sudo ./xubuntu-i3.sh
```

Resources:

- [Node Version Manager](https://github.com/nvm-sh/nvm)
- [OH MY ZSH - open source framework for zsh](https://ohmyz.sh)
- [Linux System Optimizer & Monitoring](https://oguzhaninan.github.io/Stacer-Web)
- [OH MY ZSH with autosuggestions & syntax-highlighting](https://gist.github.com/dogrocker/1efb8fd9427779c827058f873b94df95)
- [PHP Xdebug installation and configuration](https://dieuwe.com/blog/install-xdebug-ubuntu)
