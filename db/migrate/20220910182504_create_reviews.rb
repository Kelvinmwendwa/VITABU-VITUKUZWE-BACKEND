class CreateReviews < ActiveRecord::Migration[6.1]
  def changes
    create_table :reviews do |t|
      t.string :name
      t.string :review
    end
  end
end
