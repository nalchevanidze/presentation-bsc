.PHONY = compile live clean view

.DEFAULT_GOAL = compile

sync:
	git checkout master 
	git pull
	git push uhh

compile:
	make clean
	latexmk -pdf

view:
	open out/presentation-bsc-daviti-nalchevanidze.pdf

live:
	latexmk -pdf --pvc

clean:
	# git clean -xdf
	rm -rf .build

	# remove latex helpers
	find . -name "__latexindent_temp.*" -exec rm -rf {} \;

	# clean out dir
	rm -rf out
	mkdir out

	# clean latex system
	latexmk -c -silent
	latexmk -C -silent
