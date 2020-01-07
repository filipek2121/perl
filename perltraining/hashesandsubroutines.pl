#!/usr/bin/perl
# %hash = ('Janusz', 56, 'Pablo', 28, 'Jesus', 30, 'Khan', 1000);
%hash = ('Janusz' => 56, 'Pablo' => 28, 'Jesus' => 30, 'Khan' => 1000);
print "\n";
$print = <<"end";
This is a hash:
\$hash{'Janusz'} = $hash{'Janusz'}
\$hash{'Pablo'} = $hash{'Pablo'}
\$hash{'Jesus'} = $hash{'Jesus'}
\$hash{'Khan'} = $hash{'Khan'}
end
print "$print\n";
@keys = keys %hash;
print "these are the keys in this hash: @keys\n";
@values = values %hash;
print "these are the values in this hash @values\n";

sub CheckKey {
	my $name = @_[0];
	if( exists($hash{$name} ) ) {
		print "$name is $hash{$name} years old\n";
	} else {
	print "$name does not exist in the hash\n";
	}
}

sub IsOld {
	my $name = @_[0];
	if( exists($hash{$name} ) ) {
		my $age = $hash{$name};
		my $status = ($age > 60) ? "$name is old\n" : "$name is not old\n";
		print "$status\n";
	} 
}

CheckKey('Janusz');
CheckKey('Andrzej');
print "\n";
$hash{'Andrzej'} = 69;
print "i have added andrzej to the set\n";
CheckKey('Andrzej');
IsOld('Jesus');
IsOld('Khan');
