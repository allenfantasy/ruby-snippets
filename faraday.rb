require 'faraday'

conn = Faraday.new(:url => "https://api.weixin.qq.com") do |faraday|
  faraday.request  :url_encoded             # form-encode POST params
  faraday.response :logger                  # log requests to STDOUT
  faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
end

## GET ##

res = conn.get "/cgi-bin/user/info?access_token=0Z5jYV3X5ylzjrjhIc6Q6fA34qv2OmV5ngxnVEiPZBq3NN1EQ1MRjOGwoJSYgEIgBVHueWNP8117DDCoZdH7qeZ6IE_A_Q-bG1Tn75iUtbK44tcLbZ_CzONk7ym1CxM28-jyFjRHFu1UB1Mbs35yTg&openid=oNSG5uCGWErDMiR7L5UyrIUzTAXo"
p res.body
