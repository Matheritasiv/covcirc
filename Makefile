NAME	:= $(shell basename `pwd`)

all: run

run: $(NAME).mac
	maxima --very-quiet -b $<

edit:
	vim -c 'set nu fdm=marker' $(NAME).mac

.PHONY: all run edit
