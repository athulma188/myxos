integer main()
{
	integer pid;
	print ("Before Fork");
	integer i;
	i = 0;
	while(i < 35)do
		 pid = Fork();
		 print (pid);
		 if(pid == -2)then
		 	break;
		 endif;
		 
		 i = i + 1;
	endwhile;
	print ("After Fork");

	i = 0;
	while(i<100)do
		if(i == 90)then
		breakpoint;
		endif;
		i = i + 1;
	endwhile;
	Exit();
	return 0;
}