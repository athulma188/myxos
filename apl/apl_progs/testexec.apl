integer main()
{
	integer pid;
	integer status;
	pid = Fork();
	if(pid == -2)then
	    status = Exec("printnum.xsm");
	endif;
	status = Wait(pid);
	return 0;
}