# Compare making-of bidirectional link infos
# from source commit messages with those
# from doc making-of files

tool/list-src.sh "$1" > tmp/src.txt && \
tool/list-doc.sh "$1/.gh-pages" > tmp/doc.txt && \
git diff --no-index -- tmp/src.txt tmp/doc.txt && \
echo "👍"
