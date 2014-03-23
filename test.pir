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

	.local string myvar

	myvar = "kraak, local variable!"
	say myvar

	$I0 = myfunc(22)
	$I1 = myadd($I0, 33)
	say $I1

	$P0 = 'lambda1'()
	say $P0
	$I2 = $P0(1, 2)
	say $I2
.end

