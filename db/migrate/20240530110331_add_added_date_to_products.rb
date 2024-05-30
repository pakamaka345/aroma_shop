class AddAddedDateToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :added_date, :datetime
  end
end
