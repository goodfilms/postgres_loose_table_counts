# Postgres Loose Table Counts

  * Sometimes select count(*) from table is slow on postgres
  * Sometimes you don't care about 100% accurate counts (ie. infinte scroll pagination, homepage vanity "user counts", etc)
  * Sometimes, you're lazy, and google for a quick fix, and install this gem

For more background, read the [Postgres wiki page on slow counting](http://wiki.postgresql.org/wiki/Slow_Counting)

## Usage

Put this in your Gemfile

     gem "postgres_loose_table_counts"

Put this in your app

     @total_thingos = Thingo.loose_count # => 345523

Enjoy being that little bit more webscale.

By [John Barton](http://whoisjohnbarton.com) for [Goodfilms](http://goodfil.ms) which is the best online movie site of all time.

---
## Licence


Copyright (C) <2012> John Barton, Goodfilms

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

