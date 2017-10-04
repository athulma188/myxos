integer main()
{

	integer pid;
	integer status;

	pid = Fork();
	if(pid != -2)then
	       status = Wait(pid);
	       print("Print completed");
	else
	       status = Exec("printnu1.xsm");
	endif;
	return 0;
}