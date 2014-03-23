.sub myfunc
	.param int a
	say "myfunc"
	$I0 = a + 1
	.return ($I0)
.end

.sub main :main
	load_bytecode "builtins.pbc"
	load_bytecode "lambda.pbc"

	say "hello world, kraak!"
	say ""

	.local string myvar

	myvar = "kraak, local variable!"
	say myvar
	say ""

	# call function:
	$I0 = myfunc(22)

	# call function from different .pbc file:
	$I1 = myadd($I0, 33)
	say $I1
	say ""

	# create closure and call it:
	$P0 = 'lambda1'(101)
	say $P0
	$P1 = $P0(11, 22)
	say $P1
.end

