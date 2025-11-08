.PHONY: clean env html

clean: 
	rm -rf audio/*
	rm -rf figures/*
	rm -rf _build/*

env: 
	conda env update -n ligo -f environment.yml || conda env create -n ligo -f environment.yml

html: 
	myst build --html