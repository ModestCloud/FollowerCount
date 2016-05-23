require 'sequel'
require 'yaml'
require 'erb'

def load_config(file_path)
  # path = File.expand_path("../#{file_name}.yml", __FILE__)
  # puts path
  YAML.load(ERB.new(File.read(file_path)).result)
end

def pg_connection(settings)
  settings['port'] ||= '5432'

  "#{settings['adapter']}://#{settings['username']}:#{settings['password']}@#{settings['host']}:#{settings['port']}/#{settings['database']}"
end


FOLLOWERS_COUNT_OUTPUT = 'output/db_follower_counts.yml'
TARGET_DATE = '2016-05-10'
TREY_FOLLOWERS_SCHEMA = load_config('config/trey_followers_count_schema.yml')
TREY_DB_CONF = load_config('config/trey_db.yml')

DB = Sequel.connect(pg_connection(TREY_DB_CONF))


total_counts = TREY_FOLLOWERS_SCHEMA.map do |table, table_conf|
  # p table, follower_count_column
  identifier_column = table_conf['identifier_column']
  count_column = table_conf['count_column']

  sql = %Q[
    SELECT #{identifier_column}, SUM(#{count_column})
    FROM #{table}
    WHERE date='#{TARGET_DATE}'
    GROUP BY #{identifier_column}
  ]
  # puts sql

  results = DB.fetch(sql).all
  sums = results.map do |res|
    {
      'identifier' => res[identifier_column.to_sym],
      'followers' => res[:sum].to_i
    }
  end

  [table, sums]
end.to_h

File.write(FOLLOWERS_COUNT_OUTPUT, total_counts.to_yaml)
# puts total_counts.to_yaml



