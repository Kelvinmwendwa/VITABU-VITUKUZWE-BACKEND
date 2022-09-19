class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :authors
      t.string :image
      t.text :description
      t.string :genre
    end
  end
end
