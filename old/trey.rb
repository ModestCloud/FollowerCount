require_relative 'init'

def default_headers
  {
    'X-Vitrue-API-Key' => config[:trey_api_key],
    'Content-Type' => 'application/json'
  }
end

def default_body
  {
    'date' => config[:date],
    'since' => config[:date],
    'until' => config[:date],

    'page_ids' => ['1110163'],
    'metrics' => ['total_followers'],
  }
end

def request_url(network, entity)
  config[:trey_url]
    .gsub(/:network/, network)
    .gsub(/:entity/, entity)
end

network = 'linkedin'
entity = 'page_metrics'

url = request_url(network, entity)
p url

body = default_body.to_json
resp = make_request(url, method: :post, body: body, headers: default_headers)
p JSON.parse(resp.body)

