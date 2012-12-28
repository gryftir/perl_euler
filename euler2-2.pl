#!/usr/bin/perl
use warnings;
use strict;
@ARGV == 1 or die "include a number to calculate to";
my $highval = shift;
my $last = 2;
my $current = 8;
my $sum = $last;
while ($current < $highval)
{
	$sum += $current;
	my $temp = $last;
	$last = $current;
	$current = (4 * $last) + $temp;
}
print "the sum is $sum \n";
