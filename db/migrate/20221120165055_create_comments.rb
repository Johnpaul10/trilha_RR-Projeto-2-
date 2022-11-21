class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.boolean :status
      t.text :body
      t.belongs_to :filme, null: false, foreign_key: true

      t.timestamps
    end
  end
end
