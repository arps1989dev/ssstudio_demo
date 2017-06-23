class CreateSelectedPhotos < ActiveRecord::Migration
  def change
    create_table :selected_photos do |t|
      t.integer :photo_id

      t.timestamps null: false
    end
  end
end
