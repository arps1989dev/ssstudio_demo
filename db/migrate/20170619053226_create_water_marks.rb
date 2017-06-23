class CreateWaterMarks < ActiveRecord::Migration
  def change
    create_table :water_marks do |t|

      t.timestamps null: false
    end
  end
end
