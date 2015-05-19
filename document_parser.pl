#!/usr/bin/env perl
use strict;
use warnings;
use Mojo::UserAgent;
use feature 'say';
use YAML::XS qw/DumpFile/;
use Data::Dumper;

# @ARGV contains command line arguments
# ./script.pl dothis dothat
# $ARGV[0] = dothis
# $ARGV[1] = dothat
# my $grammar = shift is saying shift @ARGV
# i.e., pull first element from array and put into $grammar

# If I do not specify a file as first argument, die
my $grammar = shift or die 'Grammar file must be first argument';
my $input = shift or die 'Input file must be second argument';

# Open the file into a file handle, which is basically an iterator
# An iterator allows me to iterate over the file, line by line without
# loading the entire thing into memory.
open my $gfh, '<', $grammar or die $!;

# Now we iterate, so while <$gfh> loops over each line of file
my %regex_hash;
my @regex_arr;
my $skip_regex;
while ( <$gfh> ) {
  chomp;
  next if /\A#|\A\z/;
  # If line equals 'first_field: second_field', the following splits line on
  # colon (:) followed by an optional space, and assigns first_field into
  # $type, and second_field into $regex

  # print can look like this: print("Hello World");
  # The parens are not inside the regex
  # so split() is the format of split
  # We are splitting a string on regex
  # If the string was first:second:third, we are doing nothing with third
  # so it's tossed

  # if syntax was my @arr = split(/:\s?/) then each field would be put into an
  # element of @arr, thus $arr[0] would be first_field, $arr[1] = second_field, etc
  my ($type,$regex) = split(/--\s?/);
  if ( $type =~ /skip/ ) {
    $skip_regex = $regex;
  }
  else {
    push @regex_arr, $regex;
    $regex_hash{$regex} = $type;
  }
}

open my $ifh, '<', $input or die $!;
my $out;
while (<$ifh>) {
  chomp;
  my ($context,$directive,$syntax)=split('--');

  next if $syntax =~ /$skip_regex/;
  my $match;
  for ( @regex_arr ) {
    if ( $syntax =~ /$_/ ) {
      say $syntax;
      for my $match ( $syntax =~ m/$_/g ) {
        say $directive.'-'.$regex_hash{$_}.'-'.$match;
      }
      $match = 1;
    }
  }
  if (!$match) {
    # say $directive.'-'.$syntax;
  }

}

#DumpFile('/tmp/ass.yaml', $out);
