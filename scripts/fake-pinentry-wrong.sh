#!/bin/sh
# Like fake-pinentry.sh, but answers a wrong PIN: used to check that a wrong
# PIN is reported as an error (with the tries left) instead of a crash.
echo "OK This is only for test suites, and should never be used in production"
while read cmd rest; do
    cmd=$(printf "%s" "$cmd" | tr 'A-Z' 'a-z')
    case "$cmd" in
        getpin)
            echo "D 000000"
            echo "OK"
            ;;
        bye)
            echo "OK"
            exit 0
            ;;
        *)
            echo "OK"
            ;;
    esac
done
