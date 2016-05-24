require 'accountable'
require 'accountable/batch_api'
require 'accountable/api'
require_relative 'init'

PER_PAGE = 20
Accountable.load_from_yaml(SRMA_CONF_YML, 'development')

File.open(SRMA_RESOURCE_OUTPUT, 'w') do |output|
  page = 0
  begin
    puts '----request srma page:' + page.to_s
    results = Accountable::Api.get('resources',
                                   page: page,
                                   per_page: PER_PAGE,
                                   fields: 'id,identifier,name,resource_type,stream_type,root_bundle_id'
    )
    items = results['collection']

    output << results['collection'].to_yaml.tap do |yaml_str|
      yaml_str.sub!(/^---$/, '') if page > 0 # remove heading '---' to concat
    end

    page += 1
  end while results['has_more'] && items.size > 0
end

