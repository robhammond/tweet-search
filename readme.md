# Search Tweets

##Synopsis

Base code behind the search engine [here][1] that pulls down & searches tweets from a set list of twitter users using ElasticSearch as back-end and a Mojolicious Mojo::Lite app as a basic front-end.

You can also bulk-search a long list of search queries and output the number of results to a CSV using search-tweets.pl

## Setup

 1. Run init-db.pl to create ElasticSearch DB mappings
 2. Define screen names in @screen_names array in gather-tweets.pl
 3. Define (or use default) $max_id value to define time limit of when tweets should be collected up until
 4. Run `morbo search` and access http://localhost:3000


  [1]: http://robhammond.co/ukip