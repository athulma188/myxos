decl
	integer pid;
enddecl
integer main()
{
	pid = Fork();
	pid = Getpid();
	print(pid);
	while (2==2) do
	print(pid);
	endwhile;
	return 0;
}