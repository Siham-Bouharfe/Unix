#!/usr/bin/env bash 

all: README.md

README.md: guessinggame.sh
	echo "# The Unix Workbench Course Peer-Graded Assignment" > README.md
	echo -n "*Make date*: " >> README.md
	date >> README.md
	echo "\\" >> README.md
	echo -n "*Number of lines in guessinggame.sh:* " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "" >> README.md
clean:
	rm README.md
