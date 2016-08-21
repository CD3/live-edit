# `live-edit`

Edit a file with live updates

This is a simple script that automates the process of updating a document while editing its source.
It uses [`entr`](http://entrproject.org/) to run `make update` when the file being edited is modified, so
really you can have any command or commands run when the file is updated. A few examples of when this might be useful:

 - Regenerating a PDF when a LaTeX file is updated.
 - Create an HTML preview of a markdown document.
 - Generate an HTML file from markdown and then push this to a remote server.

The script can be used to provide a live markdown preview while editing the markdon in `vim` in a more flexible way than the
existing vim plugins that attempt to do this (this is actually the original motivation for the script).

## Dependencies
Requires `entr` to be installed.

## Example
Let's say you want to see a live preview of a Markdown file while you edit it in a text editor. First, create a `Makefile` with an `update`
target. `live-edit` will pass the name of the file being edited to `make` through the `INFILE` variable, so this can be used in your `Makefile`.
Here is an example that uses `pandoc` (http://pandoc.org/) to create a PDF from Markdown

    update:
      pandoc -f markdown -t latex -o $(basename $(INFILE)).pdf $(INFILE)

Now you can edit the file with the editor set by the environment, `$EDITOR` (uses `vim` if `$EDITOR` is not set) using `live-edit`

    live-edit example.md

This will create a PDF named `example.pdf`, and regenerate the file on file saves. You can then open `example.pdf` with a viewer such as `evince`, which
will automatically reload the file when it is updated.
