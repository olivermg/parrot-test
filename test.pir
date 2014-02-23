.sub myfunc
	.param int a
	say "myfunc"
	$I0 = a + 1
	.return ($I0)
.end

.sub main :main
	say "hello world, kraak!"

	.local string myvar
	myvar = "kraak, local variable!"
	say myvar
	$I0 = myfunc(22)
	say $I0
.end

