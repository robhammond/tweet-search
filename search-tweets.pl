#!/usr/bin/env perl
use strict;
use Mojo::UserAgent;
use Modern::Perl;

# save a long list of searches to a CSV to speed up trawling through words.
# ie if you're searching for a list of slurs that people might use in their tweets,
# put them in the words array

my $ua = Mojo::UserAgent->new;

# simple Elasticsearch API
my $base = 'http://localhost:9200/twitter/tweet/_search?default_operator=AND&q=text:';

my @words = qw(long list of words);

open OUT, ">results.csv" or die $!;

for my $word (@words) {
	my $tx = $ua->get($base . lc $word);
	if (my $res = $tx->success) {
		my $json = $res->json;

		say OUT "$word,$json->{'hits'}->{'total'}";
	}
}