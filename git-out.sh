#!/usr/bin/env sh
set -o errexit

usage() {
    echo "usage: git out"
}

version() {
    echo "git out plugin v0.1.0"
}

main() {
    case $1 in
        "-h"|"--help")
            usage; exit 0
            ;;
        "-v"|"--version")
            version; exit 0
            ;;
    esac

    echo "🔥 git commit all"

    git commit -a -m "git out" && \
    git push --force

    echo "🏃 git out now!"
}

main "$@"
