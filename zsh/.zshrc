source "$HOME/.config/varsrc"
source "$HOME/.profile"

### Source colors if zsh is launched in tty ###
if test "$TERM" = 'linux'; then
	source "$HOME/.cache/wal/colors-tty.sh";
fi

### Java Terminal Customization ###
cd ~/.local/share/Terminal_Customization/
JAVA_OLD=${_JAVA_OPTIONS}
unset _JAVA_OPTIONS
java com.souldj673.terminal_customization.textintro.TextIntroApp

### pFetch ###
export PF_INFO="title os host kernel uptime pkgs memory"
pfetch | paste ~/.local/share/Terminal_Customization/bass-clef.txt -

### DateTime ###
#java com.souldj673.terminal_customization.DateTime.DateTimeApp

export _JAVA_OPTIONS="${JAVA_OLD} -Dawt.useSystemAAFontSettings=on -Dswing.aatext=true"
cd - >> /tmp/lastDir.txt

source "$HOME/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh"
source "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOME/.slimzsh/slim.zsh"
