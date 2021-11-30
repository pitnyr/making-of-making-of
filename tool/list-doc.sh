# Extract making-of bidirectional link infos from doc making-of files

cd "$1"

find docs/making-of -name "*.md" |\
while read f; do
    awk '

function clear() {
    collect = "no"
    hash = ""
    id = ""
    msg = ""
    nr = 0
}

function show() {
    print id ":00:" hash, path
    print msg
    clear()
}

BEGIN {
    clear()
}

NR = 1 {
    path = FILENAME
    sub(/docs\/making-of\//, "", path)
    sub(/\.md$/, "", path)
}

/^<a id="commit-.*"><\/a>$/ {
    if (split($0, parts, /"/) == 3) {
        id = parts[2]
        next
    }
}

/^\[commit-.*\]\(https:\/\/.*\/commit\/.*\)$/ {
    if (split($0, parts, /\/commit\//) == 2) {
        hash = parts[2]
        sub(/\)$/, "", hash)
        next
    }
}

/^```email$/ {
    collect = "yes"
    next
}

/^```$/ && collect == "yes" {
    show()
    next
}

collect == "yes" {
    if (nr > 0) msg = msg "\n"
    msg = msg id ":"
    nr = nr + 1
    if (nr <= 9) msg = msg "0"
    msg = msg nr ":"
    if (nr == 1) msg = msg substr($0, 10)
    else msg = msg $0
    next
}

    ' $f
done |\
sort
