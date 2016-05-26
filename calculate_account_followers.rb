require_relative 'init'


TABLE_TO_RESOURCE_TYPE = TREY_FOLLOWERS_SCHEMA.map do |table, table_conf|
  [table, table_conf['resource_type']]
end.to_h
IDENTIFIER_TO_ROOT_BUNDLE_ID = YAML.load_file(IDENTIFIER_MAPPING_OUTPUT)
FOLLOWER_COUNTS = YAML.load_file(FOLLOWERS_COUNT_OUTPUT)
FOLLOWER_COUNT_KEY = 'follower_count'

bundles = YAML.load_file(SRMA_BUNDLE_OUTPUT)
            .map{|bundle| [bundle['id'], bundle]}.to_h

summary = TABLE_TO_RESOURCE_TYPE.values.map{|type| [type, 0]}.to_h
account_counts = {}
srma_missing_identifiers = []

FOLLOWER_COUNTS.each do |table, counts|
  resource_type = TABLE_TO_RESOURCE_TYPE[table]

  counts.each do |count|
    identifier = count['identifier']
    root_bundle_id = IDENTIFIER_TO_ROOT_BUNDLE_ID[resource_type][count['identifier']]

    if root_bundle_id
      account_counts[root_bundle_id] ||= {'info' => bundles[root_bundle_id],
                                          FOLLOWER_COUNT_KEY => {}}
      account_counts[root_bundle_id][FOLLOWER_COUNT_KEY][resource_type] ||= 0
      account_counts[root_bundle_id][FOLLOWER_COUNT_KEY][resource_type] += count['followers']
      summary[resource_type] += count['followers']
    else
      # puts "#{identifier} cannot be found"
      srma_missing_identifiers << identifier
    end
  end
end

account_counts.each do |account_id, account_count|
  cnt = account_count[FOLLOWER_COUNT_KEY]
  cnt['total_count'] = cnt.values.reduce(0, :+)
end

summary['total_count'] = summary.values.reduce(0, :+)

result = {
  'summary' => summary,
  'by_acount' => account_counts
}

File.write(ACCOUNT_FOLLOWER_COUNT_OUTPUT, result.to_yaml)
File.write('output/srma_missing_identifiers.yml', srma_missing_identifiers.to_yaml)

