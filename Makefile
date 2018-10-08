all: $(shell ls f*.txt -1 | sed 's/txt/out/')

%.out : %.txt fbmc18.sh
	./fbmc18.sh $< > $@

stuff.txt: Makefile 
	echo "This is some awesome stuff" > $@

morestuff.txt: stuff.txt
	sed 's/some/more/' $<  > $@


clean :
	-rm *.out
