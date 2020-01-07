#!/usr/bin/perl

@letters = (a..z);
print "this is an array of letters : @letters\n";
$string = join('-', @letters);
print "the array is now a single string : $string\n";

@numbers = (5,2,1,7,9,6,11,23,0,8,15);
print "unsorted array : @numbers\n";

@numbers = sort {$a <=> $b} @numbers;
print "sorted array : @numbers\n";

@words = ("mama", "tata", "babcia", "dziadek", "zebra");
print "unsorted string array : @words\n";

@words = sort(@words);
print "sorted string array : @words\n";

@merged = (@numbers, @words);

print "This is a merged array: @merged\n";
