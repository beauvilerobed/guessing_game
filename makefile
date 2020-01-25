Bash-Make-Git-GitHub_project:
	touch README.md


	echo " # Guessing game" > README.md
	
	echo "Make was run at" $(shell date) >> README.md
	echo $(shell wc -l < guessinggame.sh) " lines of code " >> README.md

