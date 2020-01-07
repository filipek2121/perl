#!/usr/bin/perl

package HUMAN;
sub new {
	my $class = shift;
	my $self = {
		name => shift
		surname => shift;
		age => shift;
		salary => shift;
	};
	bless $self, $class;
	return $self;
}
sub printData {
	print "I'm a $class, my name is $self->{name} $self->{surname}\n";
	print "I am $self->{age} years old and i make $self->{salary} daily";
}
1;
