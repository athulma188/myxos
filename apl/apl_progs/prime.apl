decl
	integer n;
enddecl
integer main(){
	read(n);
	integer i,j,flag;
	i = 2;
	while (i<n)do
		j = 2;
		flag = 0;
		while (j <= i/2)do
			if (i%j == 0 ) then
			   flag = 1;
			   break;
			endif;
			j = j + 1;
		endwhile;
		if (flag == 1) then
		   print(i);
		endif;
		i = i + 1;
	endwhile;
	return 0;
}
	