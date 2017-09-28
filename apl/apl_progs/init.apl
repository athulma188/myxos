integer main(){
	integer pid;
	integer status;
	string filename;
	while(1==1)do
		print("Enter command:");
		read(filename);
		if(filename == "exit")then
		    break; 
		endif;
		pid = Fork();
		if (pid == -1)then
		   print ("Program execution failed");
		endif;
		if(pid == -2)then
	       	       status = Exec(filename);
		       if(status == -1)then
		       	   print ("Program execution failed");
		           Exit();
		       endif;
		else
		       status = Wait(pid);
		endif;
	endwhile;
	return 0;
}