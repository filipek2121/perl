#!/usr/bin/perl
use warnings FATAL => 'all';
use HUMAN;

my @people = ();
for (my $i = 0; $i < 10; $i++) {
	push(@people, HUMAN->new("Human nr$i-", int(rand(100)), int(rand(100)), int(rand(5000))));
	print "new human :\n";
	$people[$i]->printData();
	print "All created humans: \n";
	foreach $h (@people) {
		$h->printData();
	}
}
