require "rest-client"

puts "Enter search query:"
query = gets.chomp.gsub(" ", "+")
response = RestClient.get("www.bing.com/search?q=#{query}")

puts "Response Code: #{response.code}"
puts "Response Cookies: #{response.cookies}"
puts "Response Headers: #{response.headers}"

puts "Display Response Body (y/n)?"
display = gets.chomp.downcase

puts "Response Body: #{response.body}" if display == "y"