class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :singer
      t.integer :movie_id

      t.timestamps
    end
    add_index :songs, :movie_id
  end
end