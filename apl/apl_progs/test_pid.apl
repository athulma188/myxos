integer main(){

	integer pid;
	integer ppid;
	print("PID:");
	pid = Getpid();
	print(pid);
	print ("PPID:");
	ppid = Getppid();
	print (ppid);
	return 0;
}