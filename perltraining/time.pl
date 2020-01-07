#!/usr/bin/perl

@date = ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
print " @date \n";

$datestring = localtime();
print "$datestring\n";
