class Notice 
	include ActiveModel
	attr_accessor :title, :author, :date, :link, :type

	def initialize title, author, date, link, type
		@title = title
		@author = author
		@date = date
		@link = link
    	@type = type
	end	
end
