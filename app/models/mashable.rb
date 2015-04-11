class Mashable < ActiveRecord::Base
	include HTTParty
	# base_uri  'http://mashable.com/stories.json'

	def noticia
		not_mas = []
		news = HTTParty.get("http://mashable.com/stories.json")
		  news["rising"].each do |notice|
    	  title =  "#{notice["title"]}"
    	  author =  "#{notice["author"]}"
    	  link =  "#{notice["link"]}"
    	  date =  "#{notice["post_date_rfc"]}"
       	  type = "Mashable"
    	  notice = Notice.new(title, author, link, date, type)
    	  not_mas.push(notice)
    		# "==================M"
		  end
		return not_mas
	end	
end

