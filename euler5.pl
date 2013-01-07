#!/usr/bin/perl
use warnings;
use strict;

my $totalnum = 2520;
my $num;
my @array;
my $val;
foreach $num (11 .. 20)
{
	if (isprime($num))
	{
		$totalnum *= $num;
	} 
	elsif ($totalnum % $num != 0) #if not prime
	{
		push @array, $num;
	}
}
foreach $num (@array)
{		
	foreach $val (1 ..  int(sqrt($num)))
		{
			if (($totalnum * $val) % $num == 0)
			{
					
					$totalnum *= $val;
					last;
			}
		}
}
print $totalnum, "\n";

sub isprime #return 1 if prime else 0
{
	my $num = shift;
	if ($num %2 != 0 && $num %3 != 0 && ((($num + 1) % 6 == 0) | (($num - 1) % 6 == 0)))
	{
		return 1;
	}
	return 0;
}

