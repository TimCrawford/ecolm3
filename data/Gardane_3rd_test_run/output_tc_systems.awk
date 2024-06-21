BEGIN {
count=1
outfile="system1.tc"
}

{

if($1=="{<rules>") {
	inrules=1
}
	if (inrules) {
		if ($1!="</rules>}") {
			next;
		}
		else {
			inrules=0
			next
		}
	}

if ($1=="{^}") {
count++;
outfile="system"count".tc"
next
}
print $0 >> outfile
}

END {
}