PARROT = parrot

run: builtins.pbc test.pbc
	$(PARROT) test.pbc

%.pbc: %.pir
	$(PARROT) -o $@ $^

clean:
	rm -vf *.pbc

