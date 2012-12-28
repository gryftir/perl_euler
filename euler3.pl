#!/usr/bin/perl
use warnings;
use strict;
@ARGV == 1 or die "include a number to calculate to";
my $highval = shift;
my $max = 5;
my $n = $highval;
my @addsum = (0,2,4);
my $addswitch = 1;
while ($n % 2 == 0)
{
	$n /= 2;
	$max = 2; 
}
while ($n % 3 == 0)
{
	$n /= 3;
	$max = 3; 
}
if($n == $max)
{
	print $max,"\n";
	exit 0;
}
$max = 5;
while($n > $max)
{	
while($n % $max == 0)
	{
		last if($n == $max);	
		$n /= $max;
	}
	last if($n == $max);
	$max += $addsum[$addswitch];
	$addswitch *= -1;
}
print $max,"\n";

