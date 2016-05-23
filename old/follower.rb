require_relative 'init'


OPTIMUS_VERSION = 'api/v1/'

###############################
###### get all resources  #####
###############################


resource_url = File.join(config[:base_url], "#{OPTIMUS_VERSION}", "resources/",config[:bundle_id].to_s)

options = {
  headers: default_headers,
  method: 'get'
}

# response = make_request(resource_url, options)
#
# p JSON.parse(response.response_body)

###############################
######    get a metric    #####
###############################

params = {
  "metrics"    =>  ['linkedin_total_followers'],
  "page_ids"   =>  ['3798337'],
  "bundle_id"  =>   config[:bundle_id].to_s,
  #"network"    => 'linkedin',
  "user_id" => config[:user_id].to_s,

  "since" => "2016-05-01",
  "until" => "2016-05-20",
  # "time_period" => nil,
  # "page_ids" => ['3798337'],
  # "post_ids" => nil,
  # "channel_ids" => nil,
  # "video_ids" => nil,
  # "tabview_ids" => nil,
  # "tag_id" => "",
  # "resource" => nil,
  # "action" => nil,
  # "account_id" => config[:bundle_id].to_s,
  # "metrics" => ["linkedin_total_followers"],
  # "page_size" => nil,
  # "page" => 1,
  # "sort" => nil,
  # "order" => nil,
  # "include_annotations" => nil,
  # "prev_period" => nil,
  # "derived_data" => nil,
  # "fetch_property_names" => nil,
  # "locale" =>"en",
  # "bundle_id" => config[:bundle_id].to_s,
  # "user_id" => config[:user_id].to_s,
  # "network_id" => "optimus",
  # "unmetric" => nil
}

metric_url =  "https://optimus.srm-staging.pp1.oraclecloud.com/api/alpha/metrics" #File.join(config[:base_url], "#{OPTIMUS_VERSION}", "metrics")

prod_metric_url = File.join(config[:base_url], "#{OPTIMUS_VERSION}", "metrics")

options = {
  method: :post,
  headers: default_headers,
  body: params.to_json
}

metrics_url = File.join(config[:base_url], "#{OPTIMUS_VERSION}", "metrics")

options1 = {
  method: :get,
  headers: default_headers,
}


p metric_url

response = make_request(prod_metric_url, options)

# response1 = make_request(metrics_url, options1)

p '==================='
p response.response_body