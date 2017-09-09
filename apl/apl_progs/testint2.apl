decl	
	integer status;
enddecl	
integer main()
{
	status = Create("myfile.dat");
	print(status);
	breakpoint;

	status = Open("myfile.dat");
	print(status);
	breakpoint;
	

	status = Open("myfile.dat");
	print(status);
	breakpoint;
	status = Close(status);
	print(status);
	breakpoint;

	status = Close(status);
	print(status);
	breakpoint;
	

	return 0;
}