class HomeController < ApplicationController
  def index
  	if(params.has_key?(:home_search_songs))
	  param_song = params[:home_search_songs][:find_songs]
	  @songs = Song.where("title LIKE ? ", "%#{param_song}%")
	else
	  @songs = Song.offset(rand(Song.count)).all.take(20)
	end
  end
end
