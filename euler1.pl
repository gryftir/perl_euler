#!/usr/bin/perl
use warnings;
use strict;

@ARGV == 1 or die "include a number to calculate to";
my $highval = shift;
print "calculating the sum of all numbers which are multiples of 3 or 5 under 1000\n";
my $sum = 0;
my $i;
for ($i = 0; $i < $highval; $i += 3)
{
	$sum += $i;
}
for ($i = 0; $i < $highval; $i += 5)
{
	if ($i % 3 != 0)
	{
		$sum += $i;
	}
} 
print "answer is: ", $sum, "\n";
