#!/usr/bin/env perl
use strict;
use warnings;
use Mojo::UserAgent;
use feature 'say';
use YAML::XS qw/DumpFile/;
use Data::Dumper;

my @multi_select = ( 'GET | HEAD | POST' );
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
    if ( $syntax =~ /on \| off;/ ) {
      push @{ $out->{$_}->{checkbox} }, $directive for @contexts;
    }
    if ( $syntax_all =~ /<code><i>(\w+)<\/i><\/code>;/ && $syntax_all !~ /(?:<i>.*){2,}/s ) {
      push @{ $out->{$_}->{text} }, { directive => $directive, label => $1 } for @contexts;
    }
    if ( $syntax =~ /(?:\w+\s?\|\s+\w+){2,}.*?.../ && $syntax_all =~ /(?:\|\s+<code><i>(?:\w+)<\/i><\/code>)/s) {
      my @placeholders = (  $syntax_all =~ m/<code><i>(\w+)<\/i>/gs );
      my @values = ( $syntax_all =~ m/<code>((?!<i>).*?)<\/code>/gs );
      # print Dumper \@values;
      push @{ $out->{$_}->{select_with_text} }, { directive => $directive, values => \@values, placeholders => \@placeholders } for @contexts;
    }
  }
}

DumpFile('/tmp/ass.yaml', $out);
