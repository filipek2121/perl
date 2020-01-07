#!/usr/bin/perl
package HUMAN;

use strict;
use warnings;

my $class = ();
my $self = {};
sub new {
	$class = shift;
	$self = {
		name => shift,
		surname => shift,
		age => shift,
		salary => shift,
	};
	bless $self, $class;
	return $self;
}
sub printData {
	my $obj = @_[0];
	print "I'm a ",$class, " my name is " ,$obj->{name}, $obj->{surname},"\n";
	print "I am ", $obj->{age}, " years old and i make ", $obj->{salary}, "\$ monthly\n";
}
1;