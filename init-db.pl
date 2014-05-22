#!/usr/bin/env perl
use strict;
use Search::Elasticsearch;

my $es = Search::Elasticsearch->new(
    nodes      => '127.0.0.1:9200'
);

my $result = $es->indices->create(
    index => 'twitter',
    body  => {
        mappings => {
        	tweet => {
		        properties => {
		            text => {
		                type => "multi_field",
		                fields => {
		                    text => {
		                        type => "string",
		                        index => "analyzed",
		                        analyzer => "english"
		                    },
		                    untouched => {
		                        type => "string",
		                        index => "not_analyzed"
		                    }
		                }
		            },
		            created_at => {
		                type => "date"
		            },
		            tweet_id => {
		                type => "string",
		                index => "not_analyzed"
		            },
		            screen_name => {
		                type => "string",
		                index => "not_analyzed"
		            },
		            from_source => {
		                type => "string",
		                index => "not_analyzed"
		            },
		            in_reply_to_screen_name => {
		                type => "string",
		                index => "not_analyzed"
		            },
		            in_reply_to_status_id_str => {
		                type => "string",
		                index => "not_analyzed"
		            },
		        }
			},
        }
        
    }
);

# $response = $e->indices->delete(
#     index => 'index' | \@indices    # required
# );