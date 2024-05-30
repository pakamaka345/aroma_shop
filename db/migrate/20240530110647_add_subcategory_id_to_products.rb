class AddSubcategoryIdToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :subcategory_id, :integer
  end
end
