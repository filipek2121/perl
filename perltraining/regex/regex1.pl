#!/usr/bin/perl

$string = "What a beautiful day to die in battle";
$pattern = i;

print "string = $string\n";
print "pattern = $pattern\n";

if ($output = $string =~ m/$pattern/) {
	print "match found: $&\n";
}
else {
	print "no match found\n";
}
