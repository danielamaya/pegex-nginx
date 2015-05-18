#!/usr/bin/env perl
use strict;
use warnings;
use feature 'say';


use Mojo::UserAgent;
use YAML::XS qw/DumpFile/;
use Data::Dumper;

my $ua = Mojo::UserAgent->new;

my $out;
while (<>) {
  chomp;
  my $dom = $ua->get($_)->res->dom;

  for ( @{$dom->find('div.directive table')} ) {
    my $directive = $_->at('tr:nth-child(1) td:nth-child(2) strong')->text.':';
    my $syntax = $_->at('tr:nth-child(1) td:nth-child(2)')->all_text;
    my $syntax_all = $_->at('tr:nth-child(1) td:nth-child(2)')->content;
    my $context = $_->at('tr:nth-child(3) td:nth-child(2)')->all_text;

    my @contexts = split(/,\s?/,$context);
    $syntax_all =~ s/<\/?(?:code|strong|br)>//g;
    $syntax_all =~ s/<\/?i>/~i~/g;
    $syntax_all =~ s/\n|^\s+|\s+$//g;
    $syntax_all =~ s/\s{2,}/ /g;
    $syntax_all =~ s/^\s+//g;
    $directive =~ s/:$//;
    $syntax_all =~ s/$directive //g;
    print "$context--$directive--$syntax_all\n";
  }
}

#DumpFile('/tmp/ass.yaml', $out);
