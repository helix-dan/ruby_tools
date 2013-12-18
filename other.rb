#### IP=>地理位置 转换 ####
require 'net/http'

def ip_to_address ip
	location_info = JSON::parse Net::HTTP.get(URI('http://ip.taobao.com/service/getIpInfo.php?ip=' + ip))
	# return format
	# {"code"=>0,
	#  "data"=>
	#   {"country"=>"中国",
	#    "country_id"=>"CN",
	#    "area"=>"华南",
	#    "area_id"=>"800000",
	#    "region"=>"广东省",
	#    "region_id"=>"440000",
	#    "city"=>"深圳市",
	#    "city_id"=>"440300",
	#    "county"=>"",
	#    "county_id"=>"-1",
	#    "isp"=>"电信",
	#    "isp_id"=>"100017",
	#    "ip"=>"116.24.137.232"
	#    }
	#  }
end

####### 生成随机字符串 ######
class String
  def self.random length=10
    ('a'..'z').sort_by {rand}[0,length].join
  end
end

####### Hash 排序 ######
class Hash
	def self.sorted_hash hash
		return hash.sort do |a,b|
		  a.to_s <=> b.to_s                      
		end
	end
end