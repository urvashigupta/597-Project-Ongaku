class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :track_id
      t.string :title
      t.string :artist
      t.string :album
      t.string :genre

      t.timestamps
    end
  end
end
