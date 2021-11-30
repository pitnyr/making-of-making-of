# Feature: Links

Goal: To have bi-directional links between commit messages and published making-of pages.


## Features

- [x] [Link from commit message to making-of page](#link-to-making-of-page)
- [x] [Link from making-of page to commit message](#link-to-commit-message)


## Optimizations

- [x] [Nicer links in commit messages](#nicer-links-in-commit-messages)
- [x] [Can we get rid of all the tags?](#can-we-get-rid-of-all-the-tags)


<a id="commit-2021-10-26-14-50"></a>

## Link to making-of page

The target address of this section should be
https://pitnyr.github.io/making-of-making-of/making-of/links.html#commit-2021-10-25-20-48

Convention: "commit-YYYY-MM-DD-HH-MI"

Let's see if that works...

[commit-2021-10-26-14-50](https://github.com/pitnyr/making-of-making-of/commit/80ca5124c824541e4e3475929c0fb1e08f308547)
```email
subject: Test link from commit message to making-of

The above link should point to the corresponding section in the
making-of file...
```

It works! Of course this was the easy part.


<a id="commit-2021-10-26-21-00"></a>

## Link to commit message

### The old way (with tags)

- We don't know the commit hash before actually performing the commit.
- Therefore we need another unique ID which can be fixed before commit.
- Would a tag with a timestamp work?
- What is the syntax for a link to a tag?

The URL would be
https://github.com/pitnyr/making-of-making-of/releases/tag/commit-2021-10-25-20-48

The commit message is shown on the tag page, but it seems that it isn't nicely formatted.
You have to click on the commit hash to see the formatted commit.
That's ok, though.

### The new way (with separate log branch)

The alternative with a separate gh-pages branch:

- [x] The "src" commit hash is known. For example, the URL of the latest commit is <https://github.com/pitnyr/making-of-making-of/commit/99b48afd6c95944dc410b66e8f6171973d994ca5>
- [ ] Autolinked: <99b48afd6c95944dc410b66e8f6171973d994ca5>
- [ ] Autolinked+: <pitnyr@99b48afd6c95944dc410b66e8f6171973d994ca5>
- [ ] Autolinked++: <pitnyr/making-of-making-of@99b48afd6c95944dc410b66e8f6171973d994ca5>

- [x] With different link test: [commit-2021-10-26-21-00](https://github.com/pitnyr/making-of-making-of/commit/99b48afd6c95944dc410b66e8f6171973d994ca5)
- [ ] With different link test and autolinked: [commit-2021-10-26-21-00](<99b48afd6c95944dc410b66e8f6171973d994ca5>)
- [ ] With different link test and autolinked+: [commit-2021-10-26-21-00](pitnyr@99b48afd6c95944dc410b66e8f6171973d994ca5)
- [ ] With different link test and autolinked++: [commit-2021-10-26-21-00](pitnyr/making-of-making-of@99b48afd6c95944dc410b66e8f6171973d994ca5)

[commit-2021-10-26-21-00](https://github.com/pitnyr/making-of-making-of/commit/99b48afd6c95944dc410b66e8f6171973d994ca5)
```email
subject: Test bi-directional link

First example of a bi-directional link between commit message and
published making-of page.
```


<a id="commit-2021-10-26-21-05"></a>

## Nicer Links in Commit Messages

Let's test which link syntaxes work in GitHub commit messages...

[commit-2021-10-26-21-05](https://github.com/pitnyr/making-of-making-of/commit/f9af707789592c2e320784f9fab734f6fb5ce02e)
```email
subject: Test link syntax in GitHub commit messages

Known to work:

- [x] Plain URLs: https://pitnyr.github.io/making-of-making-of/making-of/links.html#commit-2021-10-26-21-05

Other syntaxes:

- [ ] [Link Text](https://pitnyr.github.io/making-of-making-of/making-of/links.html#commit-2021-10-26-21-05)
- [ ] [Link Text with title](https://pitnyr.github.io/making-of-making-of/making-of/links.html#commit-2021-10-26-21-05 "Title")
- [ ] [Reference Style][1]

Which of these will work?

[1]: https://pitnyr.github.io/making-of-making-of/making-of/links.html#commit-2021-10-26-21-05
```

Unfortunately, only plain URLs seem to work as expected :-(


<a id="commit-2021-10-26-21-10"></a>

## Can we get rid of all the tags?

Are there other possiblities to "tag" a commit?
And to find it via a GitHub link?


### Searching

--> GitHub supports searching for commits (and other information),
but only on the default branch.
I'll have to think of branches anyway some day...


### Separate branches

But speaking of branches, I could make gh-pages an orphaned branch again.
This would mean that I had to do two commits instead of one:
one in the feature or main branch, and one in the gh-pages branch.

Advantages:
- no need for tags or other search targets,
  because the commit hash is known when committing to the gh-pages branch
- not necessarily a 1:1 relation between feature commits and gh-pages commits
- no need to link abandoned branches into the main branch
  just to keep its making-of notes

Neutral:
- 2 commits versus 1 commit and 1 tag

Disadvantages:
- Having to switch between branches
  (maybe it's possible to have the branches checked out in two directories)

This sounds interesting. Should I give it a try? Why not...
I won't rebuild the whole commit history (yet).
Instead I'll try it with new branches.
(I think both need to be orphaned?)


### Commit message syntax highlight

I take the opportunity to try syntax highlighting that could be used for commit messages
in the making-of:

[commit-2021-10-26-21-10](https://github.com/pitnyr/making-of-making-of/commit/939f133c7d1395def923d417dc1d93e5eb55faa2)
```email
subject: Thoughts about getting rid of tags

Also trying a new syntax for commit messages in the making-of markdown.
```

This feels much better. I'll delete the old tags and the old branches...


## Done

OK, ready to be [merged into the main branch](main.md#commit-2021-11-29-20-20).