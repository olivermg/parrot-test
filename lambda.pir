.sub 'lambda1'
	.param int n
	.local pmc xyz
	.lex "$mmm", xyz

	xyz = new 'Integer'
	xyz = n
	$P0 = find_name "lambda2"
	$P1 = newclosure $P0
	.return ($P1)
.end

.sub 'lambda2' :outer('lambda1')
	.param int a
	.param int b
	.local pmc vvv

	vvv = find_lex "$mmm"
	$I0 = a + b
	$P0 = new 'Integer'
	$P0 = $I0
	$P1 = $P0 + vvv
	.return ($P1)
.end

