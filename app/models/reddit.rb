class Reddit < ActiveRecord::Base
	include HTTParty
	def noticia
		not_red = []
		news = HTTParty.get("http://www.reddit.com/.json")
			news["data"]["children"].each do |notice|
				title =  "#{notice["data"]["title"]}"
				author =  "#{notice["data"]["author"]}"
				link =  "#{notice["data"]["url"]}"
				date =  Time.at(("#{notice["data"]["created"]}").to_i)
					type = "Reddit"
				notice = Notice.new(title, author, link, date, type)
				not_red.push(notice)
				# "=================R"
		  end
		return not_red
	end	
end
