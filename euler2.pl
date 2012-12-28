#!/usr/bin/perl
use warnings;
use strict;
@ARGV == 1 or die "include a number to calculate to";
my $highval = shift;
my $sum = 0;
my $last = 1;
my $current = 2;
my $i;
while ($current < $highval)
{
	if ($current % 2 == 0)
	{
		$sum += $current;
	}
	my $temp = $last;
	$last = $current;
	$current = $last + $temp;
}
print "the sum is $sum \n";
