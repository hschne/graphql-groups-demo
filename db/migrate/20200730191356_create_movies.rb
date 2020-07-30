class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :imdb_id
      t.decimal :popularity, precision: 5, scale: 2
      t.numeric :budget
      t.numeric :revenue
      t.string :title
      t.numeric :runtime, precision: 3
      t.date :release_date
    end
  end
end
