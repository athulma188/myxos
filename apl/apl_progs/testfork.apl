decl
	integer pids[35];
enddecl
integer main()
{
	integer pid;
	print ("Before Fork");
	integer i;
	integer status;
	i = 0;
	while(i < 35)do
		 pids[i] = Fork();
		 print (pids[i]);

		 if(pids[i] == -2)then
		 	break;
		 endif;
		 
		 i = i + 1;
	endwhile;

	pid = i;

	while(0==0)do
		status = Getpid();
		print(status);
	endwhile;
	
	if (pids[pid] != -2)then
	   i = 0;
	   while (i<35)do
	      status = Wait(pids[i]);
	      i = i + 1;
	   endwhile;
	   print ("After Fork");
	else
		print ("Child exit");
	endif;
	
	
	return 0;
}