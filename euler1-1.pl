#!/usr/bin/perl
use warnings;
use strict;

@ARGV == 1 or die "include a number to calculate to";
my $highval = shift;
print "calculating the sum of all numbers which are multiples of 3 or 5 under 1000\n";
print "result: ", sumbydiv(3, $highval) + sumbydiv(5, $highval) - sumbydiv(15, $highval), "\n";


sub sumbydiv  #sum of multiples of first val
{		
	#you can return the sum of natural numbers from 1 to n as n(n+1)/2
	#therefore you can return the sum of all natural numbebers from 1 to n divisible by x
	#as n div x = p, x * p * (p+1)/2 we subtract 1 from n because we are looking for numbers below the specified n 	
	my $p = int(($_[1] - 1) / $_[0]); 
	return ($_[0] * $p * ($p + 1))/2; 
}
#run with perl euler1-1.perl 1000 to get the correct answer

