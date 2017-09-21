integer main()
{

	integer pid;
	integer status;

	pid = Fork();
	if(pid != -2)then
	       status = Wait(pid);
	       print("Return of wait");
	       print (status);
	       print("Print completed");
	else
	       status = Exec("printnum.xsm");
	endif;
	return 0;
}