sudo add-apt-repository ppa:snwh/pulp
sudo add-apt-repository ppa:hansjorg/rust
# TODO: vivaldi-snapshot
# TODO: does mame quine relay have js
# TODO: adapta theme
# TODO: add mediahuman, node repo
sudo apt-get update && sudo apt-get install ubuntu-desktop vlc indicator-stickynotes gksu \
 aptitude \
 vim \
 libgmp3-dev libmpfr-dev libisl-dev libcloog-isl-dev libmpc-dev texinfo \
 git \
 compizconfig-settings-manage \
 texstudio \
 matlab-support matlab-support-dev \
 paper-gtk-theme paper-icon-theme \
 lm-sensors zsh unity-tweak-tool clang \
 ibus-anthy \
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
 tcl ucblogo valac xsltproc yorick zoem\
 node youtube-to-mp3 youtube-downloader

sudo apt-get install uuid-dev libattr1-dev zlib1g-dev libacl1-dev e2fslibs-dev libblkid-dev liblzo2-dev

sudo apt-get remove jayatana

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_theme_background" --type bool false
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_theme_colors" --type bool false
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/palette" --type string "#070736364242:#D3D301010202:#858599990000:#B5B589890000:#26268B8BD2D2:#D3D336368282:#2A2AA1A19898:#EEEEE8E8D5D5:#00002B2B3636:#CBCB4B4B1616:#58586E6E7575:#65657B7B8383:#838394949696:#6C6C7171C4C4:#9393A1A1A1A1:#FDFDF6F6E3E3"
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/background_color" --type string "#00002B2B3636"
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/foreground_color" --type string "#65657B7B8383"

curl https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.256dark > ~/.dircolors

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
echo "deb http://download.mono-project.com/repo/debian wheezy-apache24-compat main" | sudo tee -a /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get update
sudo apt-get install mono-devel mono-complete referenceassemblies-pcl monodevelop

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/somebody1234/dotfiles.git

sudo cp blank.png /usr/share/unity/icons/panel_shadow.png
sudo cp /usr/share/unity/icons/panel_shadow.png ~/original/panel_shadow.png
