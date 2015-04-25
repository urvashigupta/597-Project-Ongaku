class HomeController < ApplicationController
  def index
  	@songs = Song.all.take(10)
	# album = Rockstar::Album.new('Carrie Underwood', 'Some Hearts', :include_info => true)

	# @album_name =  "Album: #{album.name}"
	# @album_artist =  "Artist: #{album.artist}"
	# @album_url =  "URL: #{album.url}"
	# @album_release_date =  "Release Date: #{album.release_date.strftime('%m/%d/%Y')}"
  end
end
