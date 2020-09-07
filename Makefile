# makefile path
makefile := $(realpath $(lastword $(MAKEFILE_LIST)))

# executables
CAT := cat
COLUMN := column
GREP := grep
SED := sed
SORT := sort

## todo: list stubbed snippet files
.PHONY: todo
todo:
	@$(GREP) -l --exclude=Makefile --exclude=README.md -r TODO | $(SORT)

## help: display this help text
.PHONY: help
help:
	@$(CAT) $(makefile) | \
	$(SORT)             | \
	$(GREP) "^##"       | \
	$(SED) 's/## //g'   | \
	$(COLUMN) -t -s ':'
