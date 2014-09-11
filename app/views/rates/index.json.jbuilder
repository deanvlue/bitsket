json.array!(@rates) do |rate|
  json.extract! rate, :id, :mxnbtc, :btcmxn
  json.url rate_url(rate, format: :json)
end
