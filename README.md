# xubuntu-i3wm

> Guide to install xubuntu with tools/software and the i3 tiling window manager

#### My main goal with this build is to have a easy to use developer linux desktop

#### And also to have as much screen estate for programs as possible...

### NOT COMPLETE!!!

| My Links: |                                                               |
| --------- | ------------------------------------------------------------- |
| WebPage:  | [leemann.se/fredrik](http://www.leemann.se/fredrik)           |
| YouTube:  | [youtube.com/FreLee54](https://www.youtube.com/user/FreLee54) |
| GitHub:   | [github.com/freddan88](https://github.com/freddan88)          |
|           |                                                               |

### Tested with

- [Xubuntu 20.04 64Bit](http://ftp.lysator.liu.se/ubuntu-dvd/xubuntu/releases/20.04/release)

#### For VM:s you should install the guest extensions and below software

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install linux-headers-$(uname -r) make gcc dkms build-essential -y
```

> OBS! Reboot your computer after upgrading to load new Linux-kernels

---

### Installation

1. Update, install some dependencies and upgrade packages

```bash
sudo apt update && sudo apt install zsh git wget curl -y && sudo apt upgrade -y
```

2. Install OH MY ZSH and zsh-autosuggestions plugin

```bash
cd && sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

3. Download the latest version of nvm (Node Version Manager)

```bash
cd && wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
```

4. Download and run the script to install all software that we are going to need

```bash
mkdir -p /tmp/i3xc && cd /tmp/i3xc
wget https://raw.githubusercontent.com/freddan88/xubuntu-i3wm/main/script/xubuntu-i3.sh
sudo chmod 755 xubuntu-i3.sh  && sudo ./xubuntu-i3.sh
```

5. REBOOT YOUR COMPUTER OR LOG IN AND OUT!!!

6. Install the latest LTS-release on node.js and npm

```bash
cd && nvm install --lts
```

| Software:           |                                                                       |
| ------------------- | --------------------------------------------------------------------- |
| Database Management | mysql-workbench, tableplus, dbeaver, sequeler, sqlitebrowser, mongodb |
| Code IDE Editor     | visual studio code (vsCode)                                           |
| API-Testing         | postman, insomnia                                                     |

#### For more software please read script:

https://github.com/freddan88/xubuntu-i3wm/blob/main/script/xubuntu-i3.sh

### Resources:

- [Node Version Manager](https://github.com/nvm-sh/nvm)
- [OH MY ZSH - open source framework for zsh](https://ohmyz.sh)
- [Linux System Optimizer & Monitoring](https://oguzhaninan.github.io/Stacer-Web)
- [OH MY ZSH with autosuggestions & syntax-highlighting](https://gist.github.com/dogrocker/1efb8fd9427779c827058f873b94df95)
- [PHP Xdebug installation and configuration](https://dieuwe.com/blog/install-xdebug-ubuntu)
- [Sequeler - Friendly SQL Client](https://github.com/Alecaddd/sequeler)
