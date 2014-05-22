# Search Tweets

##Synopsis

Base code behind the search engine [here][1] that pulls down & searches tweets from a set list of twitter users using ElasticSearch as back-end and a Mojolicious Mojo::Lite app as a basic front-end.

You can also bulk-search a long list of search queries and output the number of results to a CSV using search-tweets.pl

## Setup

 1. Run init-db.pl to create ElasticSearch DB mappings
 2. Define screen names in @screen_names array in gather-tweets.pl
 3. Define (or use default) $max_id value to define time limit of when tweets should be collected up until
 4. Run `morbo search` and access http://localhost:3000

## License

The MIT License (MIT)

Copyright (c) 2013 Rob Hammond

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


  [1]: http://robhammond.co/ukip