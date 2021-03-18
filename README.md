## xubuntu-i3wm

NOT COMPLETE!!!

> Guide to install xubuntu with tools/software and the i3 tiling window manager

1. Update and upgrade packages

```bash
sudo apt update && sudo apt install zsh -y && sudo apt upgrade -y
```

2. Install OH-MY-ZSH and zsh-autosuggestions plugin

```bash
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### REBOOT YOUR COMPUTER

---

For VM:s you should install the guest extensions and bellow

```bash
sudo apt install linux-headers-$(uname -r) make gcc dkms build-essential -y
```

3. Download and run the script to install all software that we are going to need

```bash
cd /tmp && wget https://raw.githubusercontent.com/freddan88/xubuntu-i3wm/main/script/xubuntu-i3.sh
sudo chmod 755 xubuntu-i3.sh  && sudo ./xubuntu-i3.sh
```

Resources:

- [Oh My Zsh - open source framework for zsh](https://ohmyz.sh)
- [Oh my zsh with autosuggestions & syntax-highlighting](https://gist.github.com/dogrocker/1efb8fd9427779c827058f873b94df95)
