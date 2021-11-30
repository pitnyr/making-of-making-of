# Extract making-of bidirectional link infos from source commit mesages

cd "$1"

git log --branches --full-history -- . ':!docs' |\
awk '

function clear() {
    hash = ""
    id = ""
    msg = ""
    nr = 0
    path = ""
}

function show() {
    print id ":00:" hash, path
    print id msg
    clear()
}

BEGIN {
    clear()
}

/^commit / {
    if (NR > 1) show()
    hash = $2
    next
}

/^    See https:\/\/.*\/making-of\/.*\.html#commit-/ {
    if (split($0, parts, /#/) == 2) {
        path = parts[1]
        sub(/.*\/making-of\//, "", path)
        sub(/\.html$/, "", path)
        id = parts[2]
        next
    }
}

/^    / {
    if (length > 4 || id != "") {
        if (nr > 0) msg = msg "\n"
        msg = msg id ":"
        nr = nr + 1
        if (nr <= 9) msg = msg "0"
        msg = msg nr ":" substr($0, 5)
        next
    }
}

END {
    if (NR > 1) show()
}
' |\
sort
