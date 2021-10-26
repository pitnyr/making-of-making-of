# Feature: Links

Goal: To have bi-directional links between commit messages and published making-of pages.


## Features

- [x] [Link from commit message to making-of page](#link-to-making-of-page)
- [x] [Link from making-of page to commit message](#link-to-commit-message)


## Optimizations

- [ ] [Nicer links in commit messages](#nicer-links-in-commit-messages)
- [ ] Can we get rid of all the tags?
- [ ] Tooling support for bi-directional links


<a id="commit-2021-10-25-20-48"></a>

## Link to making-of page

The target address of this section should be
https://pitnyr.github.io/making-of-making-of/making-of/links.html#commit-2021-10-25-20-48

Convention: "commit-YYYY-MM-DD-HH-MI"

Let's see if that works...

It works! Of course this was the easy part.


<a id="commit-2021-10-25-21-35"></a>

## Link to commit message

- We don't know the commit hash before actually performing the commit.
- Therefore we need another unique ID which can be fixed before commit.
- Would a tag with a timestamp work?
- What is the syntax for a link to a tag?

The URL would be
https://github.com/pitnyr/making-of-making-of/releases/tag/commit-2021-10-25-20-48

The commit message is shown on the tag page, but it seems that it isn't nicely formatted.
You have to click on the commit hash to see the formatted commit.
That's ok, though.

--

The alternative with a separate gh-pages branch:

- [x] The "src" commit hash is known. For example, the URL of the latest commit is <https://github.com/pitnyr/making-of-making-of/commit/f87c45dd984ca4be75788912de3e84957c3c6b61>
- [ ] Autolinked: <f87c45dd984ca4be75788912de3e84957c3c6b61>
- [ ] Autolinked+: <pitnyr@f87c45dd984ca4be75788912de3e84957c3c6b61>
- [ ] Autolinked++: <pitnyr/making-of-making-of@f87c45dd984ca4be75788912de3e84957c3c6b61>

- [x] With different link test: [commit-2021-10-25-21-35](https://github.com/pitnyr/making-of-making-of/commit/f87c45dd984ca4be75788912de3e84957c3c6b61)
- [ ] With different link test and autolinked: [commit-2021-10-25-21-35](<f87c45dd984ca4be75788912de3e84957c3c6b61>)
- [ ] With different link test and autolinked+: [commit-2021-10-25-20-48-links](pitnyr@f87c45dd984ca4be75788912de3e84957c3c6b61)
- [ ] With different link test and autolinked++: [commit-2021-10-25-20-48-links](pitnyr/making-of-making-of@f87c45dd984ca4be75788912de3e84957c3c6b61)


<a id="commit-2021-10-26-06-40"></a>

## Nicer Links in Commit Messages

Let's test which link syntaxes work in GitHub commit messages...

Next commit:

[commit-2021-10-26-06-40](https://github.com/pitnyr/making-of-making-of/commit/a9a4585ab2db1358aeeb50caa263f2c7816591f6)

**Test link syntax in GitHub commit messages**

Known to work:

- Plain URLs: https://pitnyr.github.io/making-of-making-of/making-of/links.html#commit-2021-10-26-06-40

Other syntaxes:

- [Link Text](https://pitnyr.github.io/making-of-making-of/making-of/links.html#commit-2021-10-26-06-40)
- [Link Text with title](https://pitnyr.github.io/making-of-making-of/making-of/links.html#commit-2021-10-26-06-40 "Title")
- [Reference Style][1]

Which of these will work?

[1]: https://pitnyr.github.io/making-of-making-of/making-of/links.html#commit-2021-10-26-06-40
