class Feed < ActiveRecord::Base
	def news type
		if type == "Mashable"
			m = Mashable.new 
			aux = m.noticia
			return aux
		elsif type == "Reddit"
			r = Reddit.new
			aux = r.noticia
			return aux
		elsif type == "Digg"
			d = Digg.new
			aux = d.noticia
			return aux
		end		
	end
end
