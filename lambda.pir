.sub 'lambda1'
	$P0 = get_global "lambda2"
	.return ($P0)
.end

.sub 'lambda2' :outer('lambda1')
	.param int a
	.param int b
	$I0 = a + b
	$I1 = $I0 + 99
	.return ($I1)
.end

