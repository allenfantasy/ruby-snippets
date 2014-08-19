require 'net/http'
require 'json'

uri = URI('https://api.weixin.qq.com/cgi-bin/user/info?access_token=se0VFFwS9yHpuIJCWpvMAMywgBuJrt3qguB3dVA3Zj11WHnzKMG1IyGQNdRh_YLN_UAyKh0FHAone0zFsTFXOCAPtiaZGE23e20uEkFYnkVXaVEqJu5lwRPbZH7kPY_yVAp5tdxsqA-X2mN7VcrxMA&openid=oNSG5uCGWErDMiR7L5UyrIUzTAXo')

info = ""

Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
  request = Net::HTTP::Get.new uri.request_uri

  response = http.request request # Net::HTTPResponse object
  info = JSON.parse(response.body)
end

puts info
