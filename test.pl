#!/usr/bin/env perl
use strict;
use warnings;
use feature 'say';
use Data::Dumper;

my ($out,$val,$syntax);
while (<>) {
  chomp;

  if ( /^\w+/ ) {
    s/://g;
    $val = $_;
  }
  if ( /syntax:\s?(.*)/ ) {
    my $syntax = $1;
    $syntax =~ s/$val //g;
    push @{ $out->{$syntax} }, $val;
  }
}
print Dumper $out;



