class HomeController < ApplicationController
  def index
  	if(params.has_key?(:home_search_songs))
  	  if params[:commit] == 'Search'
  	  	@songs = Song.where("title LIKE ? ", "silent")
	 #    param_song = params[:home_search_songs][:find_songs]
		# if param_song.length > 0 
		#   @songs = Song.where("title LIKE ? ", "%#{param_song}%")
		# else
		#   @songs = ""
		# end
	  elsif params[:commit] == 'Pop'
	   	@songs = Song.where("genre = ? ", "Pop")
	  elsif params[:commit] == 'Hip-Hop'
	   	@songs = Song.where("genre = ? ", "Hip-Hop")
	  elsif params[:commit] == 'Rock'
	   	@songs = Song.where("genre = ? ", "Rock")
	  elsif params[:commit] == 'RnB'
	   	@songs = Song.where("genre = ? ", "RnB")
	  elsif params[:commit] == 'Alternative Rock'
	   	@songs = Song.where("genre = ? ", "Alternative Rock")
	  elsif params[:commit] == 'Country'
	   	@songs = Song.where("genre = ? ", "Country")
	  elsif params[:commit] == 'Classical'
	   	@songs = Song.where("genre = ? ", "Classical")
	  elsif params[:commit] == 'Jazz'
	   	@songs = Song.where("genre = ? ", "Jazz")
	  elsif params[:commit] == 'Reggae'
	   	@songs = Song.where("genre = ? ", "Reggae")
	  elsif params[:commit] == 'Blues'
	   	@songs = Song.where("genre = ? ", "Blues")
	  end
	else
	  @songs = Song.offset(rand(Song.count)).all.take(20)
	end
  end
end

