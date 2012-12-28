#!/usr/bin/perl
use warnings;
use strict;
@ARGV == 1 or die "include a number to calculate to";
my $highval = shift;
my $root = sqrt $highval;

