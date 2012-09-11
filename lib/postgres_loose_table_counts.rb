require "postgres_loose_table_counts/version"
require "active_record"

module PostgresLooseTableCounts
  def loose_count
    connection.select_value "select reltuples from pg_class where relname='#{table_name}'"
  end
end

ActiveRecord::Base.extend(PostgresLooseTableCounts)
