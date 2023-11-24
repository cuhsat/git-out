#!/usr/bin/env sh
set -o errexit

if [ "$(id -u)" -ne 0 ]; then
    echo "this script must be run as root" 1>&2; exit 1
fi

main() {
    local PLUGIN="git-out"

    gzip -c "$PLUGIN.man" > "/usr/share/man/man1/$PLUGIN.1.gz"
    cp "$PLUGIN.sh" "/usr/local/bin/$PLUGIN"
    chmod a+x "/usr/local/bin/$PLUGIN"
}

main "$@"
