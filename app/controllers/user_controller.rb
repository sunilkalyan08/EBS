class UserController < ApplicationController
def res
require 'RubyRc4.rb'
require 'base64'

@key = 'ebskey'
@DR = params[:DR]
@DR.gsub!(/ /,'+')

@encrypted_data = Base64.decode64(@DR)

@decryptor = RubyRc4.new(@key)

@plain_text = @decryptor.encrypt(@encrypted_data)

puts "HTTP/1.0 200 OK"
puts "Content-type: text/html\n\n"
 

@plain_text.split(/&/).each_with_index do |item, i|
  key, val = item.split(/=/)
  puts "#{key}=#{val}"
end

end
 
end
