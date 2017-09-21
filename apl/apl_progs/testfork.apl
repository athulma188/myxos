integer main()
{
	integer pid;
	print ("Before Fork");
	integer i;
	integer status;
	i = 0;
	while(i < 35)do
		 pid = Fork();
		 print (pid);

		 if(pid == -2)then
		 	break;
		 endif;
		 
		 i = i + 1;
	endwhile;
	status = Wait(pid);
	print ("After Fork");
	i = 0;
	while(i < 100)do
	i = i + 1;
	endwhile;
	return 0;
}