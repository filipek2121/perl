#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';
use Mojo;
use Mojo::UserAgent;
use IO::Socket::SSL;


my $query = "a12b34c56d78";
if ($ARGV[0]) {$query = $ARGV[0];}

if ($query eq "" or $query eq "a12b34c56d78" or $query eq " ") {
    say "\nPlease supply a string value to search for, or type GetModules.pl -help for help.";
}
elsif ($query eq "h" or $query eq "-h" or $query eq "help" or $query eq "-help")
{
    say "\nYou can use this script to quickly query the CPAN module search website";
    say "Usage example: GetModules.pl mojo";
    say "This will return the search results from the CPAN website\n"
}
else {
    my $ua = Mojo::UserAgent->new;
    my $searchResult = $ua->post('https://metacpan.org/search' => form => { q => $query })->result;

    my $descriptions = $searchResult->dom->find('strong')->map('text'); #->join("\n"); #try to make it so that the name of module is displayed first and then the short description
    my $names = $searchResult->dom->find('strong a')->map('text');

    say "\nYour search results for ", $query, " :\n";
    my $count = 0;
    foreach my $n (@$names) {
        say @$names[$count], @$descriptions[$count];
        $count++;
    }
}
