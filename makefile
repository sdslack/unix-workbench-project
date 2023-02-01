README.md:
	touch README.md
	echo "## Project name: unix-workbench-project" >> README.md
	echo "## Date: $(shell date)" >> README.md
	echo "## Lines of code: $(shell cat guessinggame.sh | wc -l)" >> README.md
