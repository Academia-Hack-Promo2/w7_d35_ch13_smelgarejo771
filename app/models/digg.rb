
class Digg < ActiveRecord::Base
  include HTTParty 
	def noticia
		not_digg = []
 		news = HTTParty.get("https://digg.com/api/news/popular.json")
    	news["data"]["feed"].each do |notice|
   		  title = "#{notice["content"]["title_alt"]}"
   		  author = "#{notice["content"]["author"]}"
   		  link =  "#{notice["content"]["url"]}"
   		  date = Time.at(("#{notice["date_published"]}").to_i)
        type = "Digg"
   		  notice = Notice.new(title, author, link, date, type)
   		  not_digg.push(notice)
   			# "===================D"
		end
		return not_digg
	end	
end
