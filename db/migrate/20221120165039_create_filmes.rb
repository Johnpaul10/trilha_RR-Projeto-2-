class CreateFilmes < ActiveRecord::Migration[7.0]
  def change
    create_table :filmes do |t|
      t.string :title
      t.integer :release_year

      t.timestamps
    end
  end
end
