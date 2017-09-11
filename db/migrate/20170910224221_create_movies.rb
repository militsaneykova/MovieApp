
class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.string :director
      t.integer :song_id

      t.timestamps
    end
    add_index :movies, :song_id
  end
end