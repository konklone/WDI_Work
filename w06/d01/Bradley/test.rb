require 'open-uri'
require 'nokogiri'
# urls = []

# doc.css("a").each do |a|
#   if a.to_s.include?('.jpg')
#     urls << a['href']
#   end
# end

# urls.each do |url|
#   doc = Nokogiri::HTML(open("#{url}"))

#   doc.css("")

doc = Nokogiri::HTML(open("http://www.luckyscent.com/shop/category/124/section/1/page/1/brand/10_Corso_Como.html")) do |config|
   config.noblanks.strict
end

description = ""

doc.css("td").each do |td|
  if td.to_s.include?("brandname")
    description = td
  end
end

puts description.text.delete("\t").delete("\n")
