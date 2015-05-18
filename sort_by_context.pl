#!/usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;

my ($directive,$syntax,$out);
while (<>) {
  chomp;

  if ( /^\w+/ ) {
    s/://g;
    $directive = $_;
  }
  if ( /syntax: (.*)/ ) {
    $syntax = $1;
  }
  if ( /context: (.*)/ ) {
    my $context_string = $1;
    my @contexts = split(/,\s?/,$context_string);
    push @{ $out->{$_} }, { $directive => $syntax } for @contexts;
  }
}
print Dumper $out;
