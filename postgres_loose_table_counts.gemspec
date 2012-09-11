# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "postgres_loose_table_counts/version"

Gem::Specification.new do |s|
  s.name        = "postgres_loose_table_counts"
  s.version     = PostgresLooseTableCounts::VERSION
  s.authors     = ["John Barton"]
  s.email       = ["jrbarton@gmail.com"]
  s.homepage    = "http://github.com/joho/postgres_loose_table_counts"
  s.summary     = %q{Postgres counts can be sometimes slow for large records, and sometimes (ie pagination) being exact isn't really that important. Read http://wiki.postgresql.org/wiki/Slow_Counting for more details.}
  s.description = %q{Get a rough idea of a model count from pg_class instead of potentially expensive count()}

  s.rubyforge_project = "postgres_loose_table_counts"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "bundler"
  s.add_runtime_dependency "activerecord", ">= 3.0"
  # lol, this won't work on mysql
  s.add_runtime_dependency "pg"
end
