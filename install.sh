# if connected to internet
sudo add-apt-repository ppa:snwh/pulp
sudo add-apt-repository ppa:noobslab/themes
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo add-apt-repository ppa:umang/indicator-stickynotes
sudo add-apt-repository ppa:hansjorg/rust
sudo add-apt-repository ppa:mutate/ppa
sudo add-apt-repository ppa:noobslab/themes
# never forget ubuntu-desktop, you don't know when something will go wrong
sudo apt-get update && sudo apt-get install ubuntu-desktop firefox vlc indicator-stickynotes gksu \
 libgmp3-dev libmpfr-dev libisl-dev libcloog-isl-dev libmpc-dev texinfo \
 xorriso \
 git mercurial \
 compizconfig-settings-manage gnumeric gnome-maps \
 mutate midori cairo-dock libmozjs-24-bin \
 lyx texstudio \
 matlab-support matlab-support-dev \
 celestia-gnome celestia-common-nonfree stellarium \
 paper-gtk-theme paper-icon-theme \
 macbuntu-icons-v6 macbuntu-ithemes-v6 windos-10-themes \
 prey samba screenruler lm-sensors neovim zsh unity-tweak-tool clang gnustep\
 ibus-anthy rssowl \
 python python3 pypy \
 python-numpy python-scipy python-matplotlib \
 ipython ipython-notebook python-pandas python-sympy python-nose \
 afnix algol68g aplus-fsf asymptote \
 rust \
 ats-lang-anairiats bash bc bf bsdgames cduce clisp clojure1.6 cmake \
 coffeescript dc ecere-dev elixir emacs24 erlang f2c fp-compiler fsharp \
 g++ gambas3-script gap gauche gawk gcc gdc genius gforth gfortran ghc \
 ghostscript gnat gnu-smalltalk gnuplot gobjc golang gpt gri groff \
 groovy haxe icont iconx intercal iverilog jasmin-sable jq julia \
 libgd-dev libpng12-dev lisaac llvm lua5.3 make maxima mlton mono-devel \
 mono-mcs mono-vbnc nasm neko nickle nim ocaml octave open-cobol \
 openjdk-6-jdk pari-gp parrot perl php5-cli pike8.0 python r-base \
 ratfor regina-rexx rhino ruby2.1 scala scilab slsh spl-core swi-prolog \
 tcl ucblogo valac xsltproc yorick zoem

sudo apt-get install asciidoc xmlto --no-install-recommends
sudo apt-get install uuid-dev libattr1-dev zlib1g-dev libacl1-dev e2fslibs-dev libblkid-dev liblzo2-dev

sudo apt-get remove jayatana
# quine-relay

sudo update-alternatives --install /usr/bin/js js /usr/bin/js24 10

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_theme_background" --type bool false
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_theme_colors" --type bool false
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/palette" --type string "#070736364242:#D3D301010202:#858599990000:#B5B589890000:#26268B8BD2D2:#D3D336368282:#2A2AA1A19898:#EEEEE8E8D5D5:#00002B2B3636:#CBCB4B4B1616:#58586E6E7575:#65657B7B8383:#838394949696:#6C6C7171C4C4:#9393A1A1A1A1:#FDFDF6F6E3E3"
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/background_color" --type string "#00002B2B3636"
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/foreground_color" --type string "#65657B7B8383"

sudo wget -O/usr/local/bin/ColorPix.exe http://www.colorschemer.com/ColorPix.exe
sudo wget -O/usr/share/icons/colorpix.png http://cdn.alternativeto.net/i/22e49edc-efa7-e011-979d-0025902c7e73_11865.png
sudo cat >> FILE.txt <<EOF
[Desktop Entry]
Name=ColorPix
GenericName=ColorPix
Comment=ColorPicker via WINE
Exec=wine /usr/local/bin/ColorPix.exe
Terminal=false
Icon=/usr/share/icons/colorpix.png
Type=Application
StartupNotify=true
EOF
sudo chmod +x /usr/share/applications/colorpix.desktop

curl https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.256dark > ~/.dircolors

git clone git://github.com/jpmens/jo.git
cd jo
autoreconf -i
./configure
sudo make check
sudo make install

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
echo "deb http://download.mono-project.com/repo/debian wheezy-apache24-compat main" | sudo tee -a /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get update
sudo apt-get install mono-devel mono-complete referenceassemblies-pcl monodevelop
mkdir -p .NET
cd .NET
git clone https://github.com/Perspex/Perspex.git
cd Perspex
git submodule update --init
cd src/Skia
sudo bash getnatives.sh
cd ../../../
cd ../
#TODO: fix echo stuff
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
mkdir -p .vim/bundle
cd .vim/bundle
git clone https://github.com/Shutnik/jshint2.vim.git
# TODO: install dotfiles
git clone https://github.com/dylanaraps/fetch.git
cd fetch
sudo make install
cd ../
