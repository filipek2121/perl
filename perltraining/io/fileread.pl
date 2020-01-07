#!/usr/bin/perl




$name = @ARGV[0];
print "file = $name\n";
open(FILE, "$name") or die "Error, please specify a filename, $!\n";

@lines = <FILE>;
close(FILE);

$i = 0;
foreach $l (@lines) {
	print "Line", $i++, " = $l\n";
}
