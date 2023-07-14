class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :user_id
      t.integer :product_id
      t.integer :star_rating
    end
  end
end
