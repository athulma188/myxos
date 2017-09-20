integer main(){
	integer inp;
	integer iarg1;
	integer iarg2;
	string sarg1;
	string wordread;
	integer status;	
	while(1 == 1)do
		print ("1. Create");
		print ("2. Open");
		print ("3. Close");
		print ("4. Delete");
		print ("5. Write");
		print ("6. Seek");
		print ("7. Read");
		print ("8. Breakpoint");
		print ("9. Exit");
		
		read(inp);
		
		if (inp == 1) then
		   print ("Enter the filename: ");
		   read(sarg1);
		   status = Create(sarg1);
		   print ("Return value :");
		   print(status);
		else if (inp == 2 )then
		   print ("Enter the filename: ");
		   read(sarg1);
		   status = Open(sarg1);
		   print ("Return value :");
		   print(status);
		else if (inp == 3)then
		   print ("Enter the file descriptor: ");
		   read(iarg1);
		   status = Close(iarg1);
		   print ("Return value :");
		   print(status);
		else if (inp == 4)then
		   print ("Enter the filename: ");
		   read(sarg1);
		   status = Delete(sarg1);
		   print ("Return value :");
		   print(status);
		else if (inp == 5) then
		   print ("Enter the file descriptor: ");
		   read(iarg1);
		   print ("Enter the word to be written:");
		   read(sarg1);
		   status = Write(iarg1, sarg1);
		   print ("Return value :");
		   print(status);
		else if (inp == 6)then
		   print ("Enter the file descriptor: ");
		   read(iarg1);
		   print("Enter the new lseek position: ");
		   read(iarg2);
		   status = Seek(iarg1,iarg2);
		   print ("Return value :");
		   print(status);
		else if (inp == 7) then
		   print ("Enter the file descriptor: ");
		   read(iarg1);
		   status = Read(iarg1,wordread);
		   print ("Word read: ");
		   print (wordread);
		   print ("Return value :");
		   print(status);
		else if (inp == 8) then
		   breakpoint;
		else
		   break;
		endif;
		endif;
		endif;
		endif;
		endif;
		endif;
		endif;
		endif;
		


	endwhile;
	return 0;
}