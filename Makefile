# This is an example Makefile that can be used with live-edit. The 
# live-edit will pass a variable INFILE to make that contains the name of the file
# it is editing, so this can be used to update the file being editing.

update:
	# Use pandoc to create a pdf from markdown
	# This is used to create the README.pdf file in this directory.
	pandoc -f markdown -t latex -o $(basename $(INFILE)).pdf $(INFILE)
