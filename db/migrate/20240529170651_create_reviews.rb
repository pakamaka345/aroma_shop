class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :rating_value
      t.text :review_text
      t.date :review_date

      t.timestamps
    end
  end
end
