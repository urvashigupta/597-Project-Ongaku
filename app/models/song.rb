class Song < ActiveRecord::Migration
  attr_accessible :album, :artist, :genre, :title, :track_id
  def change
  end
end
