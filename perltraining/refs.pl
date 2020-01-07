#!/usr/bin/perl

$value = 8;
$valref = \$value;

print "value is $value\n \$valref = $valref\n \$\$valref = $$valref\n";

@value = (1..6);
$valref = \@value;
print "value is @value\n \$valref = $valref\n \@\$valref = @$valref\n";

sub printer {
	my @ar = @_;
	foreach $i (@ar) {
		print "$i\n";
	}
	print "printer worked\n";
}

$funref = \&printer;

print "i am calling the printer now\n";
&$funref(@value);

print "type of function reference: ", ref($funref), "\n";

