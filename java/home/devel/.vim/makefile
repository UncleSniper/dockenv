javatypes.lst: jretypes.lst
	cat $^ >$@

jretypes.lst: $(shell dirname $$(dirname $$(update-alternatives --list javac)))/jre/lib/rt.jar
	/home/devel/vim-scripts/tools/dumpjtypes.py $< >$@
