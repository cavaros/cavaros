sudo apt update
sudo apt install -y curl timeshift git make
git clone https://github.com/wmutschl/timeshift-autosnap-apt.git /home/$USER/timeshift-autosnap-apt
cd /home/$USER/timeshift-autosnap-apt
sudo make install
cd ~
git clone https://github.com/Antynea/grub-btrfs.git /home/$USER/grub-btrfs
cd /home/$USER/grub-btrfs
sudo make install
cd ~
sudo apt install -y htop ssh python3-venv ktorrent kget speedtest-cli -y
sudo install -d -m 0755 /etc/apt/keyrings
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null 
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null 
echo '
Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1000
' | sudo tee /etc/apt/preferences.d/mozilla
sudo apt update
sudo apt install -y firefox
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash - &&\
sudo apt-get install -y nodejs
sudo npm i -g npm yarn vercel
wget https://vscode.download.prss.microsoft.com/dbazure/download/stable/b58957e67ee1e712cebf466b995adf4c5307b2bd/code_1.89.0-1714530869_amd64.deb
sudo apt install -y ./code_1.89.0-1714530869_amd64.deb
wget https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb
sudo apt install -y ./steam.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
wget https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-stable/microsoft-edge-stable_124.0.2478.80-1_amd64.deb
sudo apt install -y ./microsoft-edge-stable_124.0.2478.80-1_amd64.deb
wget https://repo2.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3-3_all.deb
sudo dpkg -i ./protonvpn-stable-release_1.0.3-3_all.deb && sudo apt update
sudo apt install -y proton-vpn-gnome-desktop
wget https://github.com/LizardByte/Sunshine/releases/download/v0.23.1/sunshine-ubuntu-22.04-amd64.deb
sudo apt install -y ./sunshine-ubuntu-22.04-amd64.deb
curl -s https://install.zerotier.com | sudo bash
sudo zerotier-cli join 48d6023c46fba0e3
sudo apt install -y zsh zsh-syntax-highlighting zsh-autosuggestions
cp ~/.zshrc ~/.zshrcbackup
echo "source $(dpkg -L zsh-autosuggestions | grep 'zsh$')" | tee -a ~/.zshrc
echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" | tee -a ~/.zshrc
chsh -s $(which zsh)
wget https://github.com/cavaros/kde-autodark/releases/latest/download/autodark_0.1alpha-1.deb
sudo apt install -y autodark_0.1alpha-1.deb
wget https://github.com/cavaros/pyqt6/releases/latest/download/systemd-gui_0.1alpha-1.deb
sudo apt install -y systemd-gui_0.1alpha-1.deb
wget https://github.com/cavaros/KDE-DynamicThemeGenerator/releases/latest/download/dynamic-theme-generator_0.1alpha-1.deb
sudo apt install -y dynamic-theme-generator_0.1alpha-1.deb

