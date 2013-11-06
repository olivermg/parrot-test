PARROT = parrot

run: test.pir
	$(PARROT) test.pir

compile: test.pir
	$(PARROT) -o test.pbc test.pir

clean:
	rm -vf test.pbc

