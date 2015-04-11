class FeedsController < ApplicationController

	def show_mashable
		m = Feed.new
		aux = m.news("Mashable")

		# for i in 0...aux.length 
		#   puts "==============================="#.colorize(:blue)
		# 	puts aux[i].title
		#   puts aux[i].author
		#   puts aux[i].date
		#   puts aux[i].link
		#   puts aux[i].type
		# end	

		render json: aux
	end

	def show_reddit
		r = Feed.new
		aux = r.news("Reddit")
		render json: aux
	end	

	def show_digg
		d = Feed.new
		aux = d.news("Digg")
		render json: aux
	end
end
