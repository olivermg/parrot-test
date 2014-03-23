PARROT = parrot

run: builtins.pbc lambda.pbc test.pbc
	$(PARROT) test.pbc

%.pbc: %.pir
	$(PARROT) -o $@ $^

clean:
	rm -vf *.pbc

