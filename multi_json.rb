# coding: utf-8
require 'multi_json'

str = "{\"ToUserName\":\"gh_2433c7cb79f6\",\"FromUserName\":\"oNSG5uCGWErDMiR7L5UyrIUzTAXo\",\"CreateTime\":\"1387812887\",\"MsgType\":\"text\",\"Content\":\"！注册\",\"MsgId\":\"5960610962642358299\"}"

h = MultiJson.load(str)
#h = h.inject({}){ |memo, (k,v)| memo[k.to_sym] = v.to_s ; memo }
p h["ToUserName"]
