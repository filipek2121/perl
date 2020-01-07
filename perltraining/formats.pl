#!/usr/bin/perl

format display = 
@<<<<<<<<<<< @<<
$name, $age
@<<<<<<<<<<< @<<<<<<
$surname, $id
@#####.##
$salary
--------------------------
.

format top = 
==========================
@|||||||||||||||||||||||||
DATA
@<<<<@<
Page, $%
==========================
.

select(STDOUT);
$~ = "display";
$^ = "top";

@names = ("mark", "dark", "rome", "park", "smark");
@surnames = ("gark", "sark", "gome", "kark", "wark");
@ids = ("S456VB2", "S2908GB", "G43211S", "HGB4322", "PO32154");
@salaries = (2850.40, 3560.89, 2432.44, 1023.50, 6700.00);
@ages = (24, 54, 33, 46, 32);

$i = 0;

foreach $n (@names) {
	$name = $n;
	$age = @ages[$i];
	$surname = @surnames[$i];
	$id = @ids[$i];
	$salary = @salaries[$i];
	$i++;
	write;
}
