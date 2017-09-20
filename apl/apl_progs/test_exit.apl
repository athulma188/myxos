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
			Exit();
		 endif;
		 
		 i = i + 1;
	endwhile;
	print ("After Fork");
	Exit();
	return 0;
}