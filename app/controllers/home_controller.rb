class HomeController < ApplicationController
	def index
		@secure_hash = Digest::MD5.hexdigest("ebskey|5880|300.00|X1Zas|http://220748d4.ngrok.com/user/res.erb?DR={DR}|TEST")
	end
end