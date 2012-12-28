#!/usr/bin/perl
use warnings;
use strict;

@ARGV == 1 or die "include a number to calculate to";
my $highval = shift;
print "calculating the sum of all numbers which are multiples of 3 or 5 under 1000\n";
print "result: ", sumbydiv(3, $highval) + sumbydiv(5, $highval) - sumbydiv(15, $highval), "\n";


sub sumbydiv  #sum of multiples of first val
{		
	my $p = int(($_[1] - 1) / $_[0]); 
	return ($_[0] * $p * ($p + 1))/2; 
}

