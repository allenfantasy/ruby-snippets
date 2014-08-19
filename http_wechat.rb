require 'json'
require 'net/http'
require 'pathname'

access_token = "KiXFNUF35mOfsEQMoLhezHWQ7QFJlotCRpaHvxAb-vgKZmpkGHX4VAKFC16or7zf6RC8Ejt9PLuMs7OCPX2aeDI31QiJRvu5uqup-9yOOBeFm4XJ2jC18-AxmjMdtucNrk3ICEd9fYhq756AuxPV2Q"
media_id = "_E-bzGTJMxGerxhEGFclerEtcqXJz9SqcLHWSA_ydKpoc3DJTd9WxBuXnrDyPUPs"
url = "http://file.api.weixin.qq.com/cgi-bin/media/get?access_token=#{ access_token }&media_id=#{ media_id }"
uri = URI.parse(url)

file = File.open("test.amr", "wb")
Net::HTTP.start(uri.host, uri.port) do |http|
  request = Net::HTTP::Get.new uri.request_uri
  response = http.request request
  if response.header["Content-Length"].to_i < 100 # error ?
    puts response.body
  else
    file.write(response.body)
    puts "success!"
  end
end
