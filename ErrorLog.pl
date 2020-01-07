#!/usr/bin/perl
use warnings FATAL => 'all';
use strict;

my $logFilePath = "/var/log/messages";
my $writePath = "errorLog.txt";
my @errors = ();

open(FILE, $logFilePath) or die "Error when opening read file, $!";
my @file = <FILE>;
close(FILE) or die "Error when closing read file, $!";
foreach my $line (@file) {
    if ($line =~ m/error/i) {
        push (@errors, $line);
    }
}

print scalar @errors, " - errors found, saving to file errorLog.txt in this directory \n";

open(WRITE, ">$writePath") or die "Error when opening write file, $!";
print WRITE @errors, "\n";
close (WRITE) or die "Error when closing write file, $!";