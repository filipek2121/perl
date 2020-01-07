#!/usr/bin/perl

use HUMAN;
@people;
for ($a = 0; $a < 10; $a++) {
	push (@people, new HUMAN("Human nr$a-", rand(100), rand(100), rand(5000)));
}
foreach $h (@people) {
	$h->printData();
}
