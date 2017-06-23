class AddCategoryIdToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :category_id, :string
  end
end
