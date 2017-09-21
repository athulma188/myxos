integer main(){
	integer pid;
	integer status;
	string filename;
	while(1==1)do
		print("Enter the filename:");
		read(filename);
		if(filename == "exit")then
		    break;
		endif;
		pid = Fork();
		print (pid);
		if(pid == -2)then
	       	       status = Exec(filename);
		       if(status == -1)then
		           Exit();
		       endif;
		       print(status);
		else
		       status = Wait(pid);
		endif;
	endwhile;
	return 0;
}