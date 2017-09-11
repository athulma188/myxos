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

	integer i;
	i = 0;
	while(i < 512 * 256 + 1)do
		if (i == 256*512)then
		   breakpoint;
		   endif;
		print("Write");
		status = Write(id,i);
		print (status);
		i = i + 1;
		
	endwhile;

	print("Seek");
	status = Seek(id , 512 * 128);
	print(status);
	breakpoint;

	print("Read");
	integer dat;
	status = Read(id, dat);
	print(dat);
	print(status);
	breakpoint;

	print("Read");
	status = Read(id, dat);
	print(dat);
	print(status);
	breakpoint;
	
	print ("Close");
	status = Close(id);
	print(status);
	breakpoint;	

	return 0;
}