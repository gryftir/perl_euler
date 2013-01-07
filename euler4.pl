#!/usr/bin/perl
use strict;
use warnings;

my @array;
my $found = 0;
my $curval;
my $calc = 999;
my $val;
my $min;
while (!$found)
{
	$val = 999;	
	$curval = $calc * 1000 + reverse $calc;
	if ($curval / 999 <= 999)
	{
		$min = $curval /  ($val + 0.0);
while ($min > 100 && $min < 999 && $min <= $val)
		{
			if ($min == int($min) && $min % 100 > 1)
			{
				$found = 1;
			}
			--$val;
			$min = $curval /  ($val + 0.0);
		}
	}
	--$calc; 
}
print $curval, "\n";


