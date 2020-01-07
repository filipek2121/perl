#!/usr/bin/perl

@cyferki = (1, 2, 3, 4, 5);
print "cyferki - @cyferki\n";

push(@cyferki, "a");
print "push a - @cyferki\n";

unshift(@cyferki, "b");
print "unshift b - @cyferki\n";

pop(@cyferki);
print "pop - @cyferki\n";

shift(@cyferki);
print "shift - @cyferki\n";

@wybranecyferki = @cyferki[0..3];
print "wybrane cyferki - @wybranecyferki\n";
