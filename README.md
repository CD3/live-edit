# `live-update`

Edit a file with live updates

This is a simple script that automates the process of updating a document while editing its source.
It uses [`entr`](http://entrproject.org/) to run `make update` when the file being edited is modified, so
really you can have any command or commands run when the file is updates. A few examples of when this might be useful:

 - Regenerating a PDF when a LaTeX file is updated.
 - Create an HTML preview of a markdown document.
 - Generate an HTML file from markdown and then push this to a remote server.

The script can be used to provide a live markdown preview while editing the markdon in `vim` in a more flexible way than the
existing vim plugins that attempt to do this (this is actually the original motivation for the script).
