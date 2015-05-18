#!/usr/bin/env perl
use strict;
use warnings;
use Mojo::UserAgent;
use feature 'say';
use YAML::XS qw/DumpFile/;
use Data::Dumper;

my $out;
while (<>) {
  chomp;
  my ($context,$directive,$syntax)=split('--');

  # Value = Text (textbox)
  if ( $syntax =~ /^~i~[\w\-]+~i~;$/ ) {
    # say $syntax;
  }
  # Boolean checkbox
  elsif ( $syntax =~ /^on\s?\|\s?off/ || $syntax =~ /^[\w\-]+;$/ ) {
    # say $syntax;
  }
  # Radio
  elsif ( $syntax =~ /^(?:[\w\-]+\s?\|\s?)+.*;$/ && $syntax !~ /~i~|\.\.\./ ) {
    # say $syntax;
  }
  # Multiple Checkboxes
  elsif ( $syntax =~ /^(?:[\w\-]+\s?\|\s?)+.*?\.\.\.;$/ && $syntax !~ /~i~/ ) {
    # say $syntax;
  }
  # Multiple textboxes
  elsif ( $syntax =~ /^~i~[\w\-]+~i~\s?\.\.\.;/ ) {
    say $syntax;
  }
  elsif ( $syntax =~ /\{/ ) {
    next;
  }
  # Off or textbox
  # off | ~i~
  # ~i~ | off
  elsif ( $syntax =~ /^(?:off|~i~[\w\-]+~i~) \| (?:off|~i~[\w\-]+~i~)/ ) {
    # say $syntax;
  }
  # off or multiple textboxes
  elsif ( $syntax =~ /^(?:off|~i~[\w\-]+~i~) \| (?:off|~i~[\w\-]+~i~)/ ) {
    # say $syntax;
  }
  # Multiple textboxes 2
  elsif ( $syntax =~ /^(?:~i~[\w\-]+~i~\s)+~i~[\w\-]+~i~;$/ ) {
    # say $syntax;
  }
  # Select with textbox
  elsif ( $syntax =~ /(?:[\w\-]+\s\|\s)+.*;$/ && $syntax =~ /~i~/ && $syntax !~ /\[/ ) {
    # say $directive.'-'.$syntax;
  }
  else {
    # say $directive.'-'.$syntax;
  }
}

#DumpFile('/tmp/ass.yaml', $out);
