
check: check-Madlib1 check-Madlib2

Madlib.exe: Madlib.cs
	csc Madlib.cs

%.output: Madlib.exe
	mono Madlib.exe < $*.input > $*.output

check-%: %.output
	cmp $*.output $*.expected


submit: check
	git commit -am "Submitting"
	git push origin master

update-http:
	git pull https://gitlab.csi.miamioh.edu/CSE465/instructor/lab06.git

update-ssh:
	git pull git@gitlab.csi.miamioh.edu:CSE465/instructor/lab06.git

update: update-http
