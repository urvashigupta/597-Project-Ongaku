class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :track_id
      t.string :title
      t.string :song_id
      t.string :release
      t.string :artist_id
      t.string :artist_name
      t.string :duration
      t.string :year

      t.timestamps
    end
  end
end
