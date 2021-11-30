# Making Of a Program


## Goal

Write a log of the steps, thoughts, etc while implementing a program


## Needed

- [x] [Bidirectional links between commits and "chapters" in the log](#bidirectional-links)
- [ ] [Extract commit messages from the log](#extract-commit-messages-from-the-log)
- [ ] Embed nicely formatted code


## Nice to have

- [ ] Links between published pages
- [ ] Searchable published site


## Linking between commits and the log

- The new log is part of a commit, so there's no commit hash yet
- Could create a tag for the commit which is known in advance?
- Maybe the current time? Should be sufficiently unique

Another way would be to use a separate (orphan) branch for the log.

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


## Organization

- At most one "src" commit per log file or possibly more than one?
- I'd prefer to be flexible, so a variable number if it's practicable

With a separate gh-pages branch this is totally flexible.


## Searching and Linking

- It would be great if I could search in the whole log and link individual pages
- In the elm community there have been tools mentioned - searching...
- Found it: https://foambubble.github.io/foam/
- Alternatives:
  - https://obsidian.md/
  - https://joplinapp.org/
  - https://www.zettlr.com/
  - https://crossnote.app/
  - https://www.dendron.so/


<a id="commit-2021-10-26-14-40"></a>

## Evaluation

I looked at some note taking programs, but I think I don't need most of their features.
For example, I don't think I'll 'need a graphical display of the nodes and their connections.

So I looked at static site generators, for example here: https://jamstack.org/generators/.
I didn't find one that stands out for my purpose, so I think I could as well stick with Jekyll and Github Pages.

So let's give that a try...

[commit-2021-10-26-14-40](https://github.com/pitnyr/making-of-making-of/commit/e343ff601e3a357658aeda91091130823eae8425)
```email
subject: Add a license file

...and a dummy file to prevent empty commits.
```


<a id="commit-2021-11-29-20-20"></a>

## Bidirectional Links

I'll explore possibilities for bidirectional links in feature branch "[links](links.md)".

[commit-2021-11-29-20-20](https://github.com/pitnyr/making-of-making-of/commit/5b34922ff88ac1608ccd5c5fb2ec6a1af020830d)
```email
subject: Merge branch 'links'
```


<a id="commit-2021-11-30-17-05"></a>

## Extract commit messages from the log

Let's see, which tools could help writing the Making-Of docs: feature branch "[tools](tools.md)".

[commit-2021-11-30-17-05](https://github.com/pitnyr/making-of-making-of/commit/953a3f1b5a334af3c599cc5df494da332086f5d4)
```email
subject: Merge branch 'tools'
```

I could add more tools, for example for

- automating merge commits
- moving and/or renaming a repository
- ...

but I think it's pretty usable already, so I'll leave it as it is...
