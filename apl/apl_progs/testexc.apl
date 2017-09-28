integer main()
{
	integer childpid, retval,i;
	childpid = Fork();

	if(childpid == -2) then
		//i = (10 / 0);
		
	    	retval = Exec("testexc.xsm");
		breakpoint;
	else

		while(childpid != -1) do
	       	      print(childpid);
		endwhile;
	endif;
	
	return 0;
}