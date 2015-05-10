#!/usr/bin/env perl
use strict;
use warnings;
use Mojo::UserAgent;
use feature 'say';

my $ua = Mojo::UserAgent->new;

while (<>) {
  chomp;
  my $dom = $ua->get($_)->res->dom;

  say '## '.$dom->at('div#content h2')->text;

  # div.directive:nth-child(11) > table:nth-child(1) > tbody:nth-child(1)
  # > tr:nth-child(1) > td:nth-child(2) > code:nth-child(1)
  # > strong:nth-child(1)
  for ( @{$dom->find('div.directive table')} ) {
    say $_->at('tr:nth-child(1) td:nth-child(2) strong')->text.':';
    say '  - syntax: '.$_->at('tr:nth-child(1) td:nth-child(2)')->all_text;
    say '  - context: '.$_->at('tr:nth-child(3) td:nth-child(2)')->all_text;
    print "\n";
  }
}
