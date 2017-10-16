decl
	integer pids[32];
enddecl
integer main()
{
	integer pid;
	print ("Before Fork");
	integer i;
	integer status;
	i = 0;
	while(i < 32)do
		 pids[i] = Fork();
		 if(pids[i] == -2)then
		 	 status = Exec("test.xsm");
		 endif;
		 
		 i = i + 1;
	endwhile;
	i  = 0;
	 while (i<32)do
	      status = Wait(pids[i]);
	      i = i + 1;
	 endwhile;
	print ("After Fork");
	
	return 0;
}