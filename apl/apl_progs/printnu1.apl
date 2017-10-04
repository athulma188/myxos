decl
	integer i,stat;
enddecl
integer main()
{
	i = 1;
	while (i <= 50)do
	      print(i);
	      if i == 20 then
	      	 stat = Signal();
 		 endif;
	      i = i + 1;
	endwhile;
	return 0;
}