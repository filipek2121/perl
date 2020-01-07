#!/usr/bin/perl

$info = "how to use: -a to append to existing filename\n-c to create a new filename\n./filewrite -(a/c) filename text\n";
$size = @ARGV;
$filename = @ARGV[1];
$text = @ARGV[2];
if ($size < 4) {
	if (@ARGV[0] eq "-a" ) {
		if (-e $filename) {
			if (-w $filename) {
				adder(0);
			}
			else {
				print "Error - $filename is not writable.\n";
			}
		}
		else {
			print "Error - $filename does not exist\n";
		}
	}
	elsif (@ARGV[0] eq "-c") {
		if (-e $filename) {
			print "The file already exists, do you want to overwrite?\n";
			$r = <STDIN>;
			if ($r eq "y" or $r eq "Y" or $r eq "yes" or $r eq "Yes" or $r eq "YES" ) {
				adder(1);
			}			
		}
		else {
			adder(1);
		}
	}
	else {
		print $info;
	}
}
else {
	print $info;
}

sub adder {
	if (@_[0] == 1) { 
		open(FILE, ">$filename") or die "Error when creating or opening file, $!\n";
	}
	else {
		open(FILE, ">>$filename") or die "Error when creating or opening file, $!\n";
	}
	print FILE $text, "\n";	
	close (FILE) or die "Error when closing the file, $!\n";
}
