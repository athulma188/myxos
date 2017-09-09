decl	
	integer status;
enddecl	
integer main()
{
	integer id;
	
	print ("Create");
	status = Create("myfile.dat");
	print(status);
	breakpoint;

	print ("Open");
	id = Open("myfile.dat");
	print(status);
	breakpoint;
	
	print("Delete");
	status = Delete("myfile.dat");
	print(status);
	breakpoint;
	
	
	print ("Close");
	status = Close(id);
	print(status);
	breakpoint;

	print("Delete");
	status = Delete("myfile.dat");
	print(status);
	breakpoint;
	
	

	return 0;
}