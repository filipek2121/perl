#!/usr/bin/perl

@letters = (a..z);
print "this is the letter array: @letters\n";

splice(@letters, 6, 5, 1..5);
print "this is the array after splicing: @letters\n";


$long = "lubie-koty-tak-bardzo-ze-to-karalne";
$list = "mleko,jajka,chleb,zurawina,kot";

print "this is te long string : $long\n";
@string = split('-', $long);
print "the long string is now divided: 0 = @string[0], 3 = @string[3]\n";

print "this is another long string : $list\n";
@listed = split(',', $list);
print "it is also divided: 0 = @listed[0], 3 = @listed[3]\n";
