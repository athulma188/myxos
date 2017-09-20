integer main()
{
	integer pid;
	print ("Before Fork");
	integer i;
	i = 0;
	while(i < 35)do
		 pid = Fork();
		 print (pid);
		 if (pid == 8)then
		    breakpoint;
		 endif;
		 if(pid != -2)then
		 	break;
			endif;
		 
		 i = i + 1;
	endwhile;
	print ("After Fork");
	while(1<2)do
	i = 0;
	endwhile;
	return 0;
}