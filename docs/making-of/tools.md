# Feature: Tools

Goal: Have tools to support writing Making-Of docs


## Features

- [x] [Tooling support for bi-directional links](#tooling-support-for-bi-directional-links)
- [x] [Verify bi-directional links](#verify-bi-directional-links)


## Tooling support for bi-directional links

### Write a commit message in VS Code

Maybe with a snippet? (Have to look it up...)

Ok, seems to be possible, because many variables are available.

On the other hand, I need to get the commit hash into the markdown file,
so why not create the complete commit block with a shell command?


### Perform a feature commit with the details from a making-of file

This could be done for example with a Git bash script.

As noted above, the script could not only extract the commit message
and perform the commit, but also generate the complete commit block
to be inserted in the markdown file.

How can this be achieved?
The UX could be:
- Write a commit message with title and body in VS Code
- Select the complete message
- Run external command to create commit
- Replace the selected message with the output of the command

Turns out there's a VS Code extension to do this:
https://marketplace.visualstudio.com/items?itemName=ryu1kn.edit-with-shell

Installing it...


### Testing the "Edit with Shell" extension

Executing `dir` with the default windows shell:

```plaintext
 Datentr�ger in Laufwerk C: ist xxxx
 Volumeseriennummer: 1234-5678

 Verzeichnis von c:\...\pitnyr\making-of-making-of\.gh-pages\docs\making-of

26.10.2021  19:10    <DIR>          .
26.10.2021  19:10    <DIR>          ..
28.10.2021  06:58             6.261 links.md
26.10.2021  15:01             2.216 main.md
               2 Datei(en),          8.477 Bytes
               2 Verzeichnis(se), 137.825.857.536 Bytes frei
```

Setting the shell to Git bash ("C:/Program Files/Git/bin/bash.exe"),
the shell args to "-c", and executing `ls`:

```plaintext
links.md
main.md
```

How can I pass the name of the current file?
This is needed for the link to the making-of file.

Unfortunately, it doesn't seem to be possible without changing the extension itself...

Could I write a task which first adds the necessary variable
for example as the first line of the selection and then runs one of the
apropriately configured quick command?

Studying tasks...
--> Tasks are for running external programs

Are there something like macros for VS Code?
--> This extension looks very promising:
https://marketplace.visualstudio.com/items?itemName=EXCEEDSYSTEM.vscode-macros

It allows to write a macro in Javascript with access to the VS Code Extension API.

What would be easier to implement / use?
a) A combination of the VSCode-Macros and Edit-With-Shell extensions
b) An adapted and custom tailored version of the Edit-With-Shell extension

I think b) would be the better option,
because for a) it could be difficult to configure the extensions so that they work together,
and this would have to be done for each making-of project.
And b) is more interesting :-)

I think b) would be the better option,
because for a) it could be difficult to configure the extensions so that they work together,


### Creating a fork of the EditWithShell extension

Should this be it's own feature / project?
Why not...

OK, it worked! My own VS Code extension: <https://github.com/pitnyr/making-of-vscode>


<a id="commit-2021-11-30-16-57"></a>

## Verify bi-directional links

Can we verify, whether the "source" commit hashes and messages match the "making-of" docs?

It should be possible with shell / awk scripts to extract the relevant infos from both
the source commit history and the making-of docs...

Yes, it works!

[commit-2021-11-30-16-57](https://github.com/pitnyr/making-of-making-of/commit/0faceb4acbb552b000bc420f8f09b1619e39b0eb)
```email
subject: Add scripts to verify bidirectional links
```

I used it to synch both sides in this repository, too.


## Done

OK, ready to be [merged into the main branch](main.md#commit-2021-11-30-17-05).