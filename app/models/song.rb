class Song < ActiveRecord::Base
  attr_accessible :album, :artist, :genre, :title, :track_id
  def change
  end
end
