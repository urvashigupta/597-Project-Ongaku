class Song < ActiveRecord::Base
  attr_accessible :artist_id, :artist_name, :duration, :genre, :release, :song_id, :title, :track_id, :year
end
