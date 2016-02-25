#
# Auto-detect the downloader.
#
if   command -v wget >/dev/null; then downloader="wget"
elif command -v curl >/dev/null; then downloader="curl"
fi

#
# Only use sudo if already root.
#
if (( UID == 0 )); then sudo=""
else                    sudo="sudo"
fi

#
# Prints a log message.
#
function log()
{
    if [[ -t 1 ]]; then
        echo -e "\x1b[1m\x1b[32m>>>\x1b[0m \x1b[1m$1\x1b[0m"
    else
        echo ">>> $1"
    fi
}


#
# Prints a warn message.
#
function warn()
{
        if [[ -t 1 ]]; then
                echo -e "\x1b[1m\x1b[33m***\x1b[0m \x1b[1m$1\x1b[0m" >&2
        else
                echo "*** $1" >&2
        fi
}

#
# Prints an error message.
#
function error()
{
        if [[ -t 1 ]]; then
                echo -e "\x1b[1m\x1b[31m!!!\x1b[0m \x1b[1m$1\x1b[0m" >&2
        else
                echo "!!! $1" >&2
        fi
}

#
# Prints an error message and exists with -1.
#
function fail()
{
        error "$@"
        exit -1
}

#
# Downloads a URL.
#
function download()
{
	local url="$1"
	local dest="$2"

	[[ -d "$dest" ]] && dest="$dest/${url##*/}"
	[[ -f "$dest" ]] && return

	case "$downloader" in
		wget) wget -c -O "$dest.part" "$url" || return $?         ;;
		curl) curl -f -L -C - -o "$dest.part" "$url" || return $? ;;
		"")
			error "Could not find wget or curl"
			return 1
			;;
	esac

	mv "$dest.part" "$dest" || return $?
}

#
# Extracts an archive.
#
function extract()
{
	local archive="$1"
	local dest="${2:-${archive%/*}}"

	case "$archive" in
		*.tgz|*.tar.gz) tar -xzf "$archive" -C "$dest" || return $? ;;
		*.txz|*.tar.xz)	tar -xJf "$archive" -C "$dest" || return $? ;;
		*.tbz|*.tbz2|*.tar.bz2)	tar -xjf "$archive" -C "$dest" || return $? ;;
		*.zip) unzip "$archive" -d "$dest" || return $? ;;
		*)
			error "Unknown archive format: $archive"
			return 1
			;;
	esac
}


function latest-neovim() {
  # git clone git@github.com:neovim/neovim.git
  cd ~/src/neovim &&
  git pull &&
  rm -rf ./build &&
  make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX:PATH=$HOME/.local" install
  cd $OLDPWD
}

function latest-chruby() {
    if [ -d ~/src/chruby/ ]; then
        cd ~/src/chruby/
        git pull
    else
        mkdir -p ~/src
        git clone https://github.com/postmodern/chruby.git ~/src/chruby
        cd ~/src/chruby/
    fi

    make install PREFIX=~/.local
    cd $OLDPWD
}

function latest-ruby-install() {
    if [ -d ~/src/ruby-install/ ]; then
        cd ~/src/ruby-install/
        git pull
    else
        mkdir -p ~/src
        git clone https://github.com/postmodern/ruby-install.git ~/src/ruby-install
        cd ~/src/ruby-install/
    fi

    make install PREFIX=~/.local
    cd $OLDPWD
}

#
# Returns latest release of specified repository on GitHub
#
function github-latest-release() {
    local repo="$1"

    curl -s https://api.github.com/repos/$repo/releases/latest | grep tag_name | cut -d '"' -f 4
}
