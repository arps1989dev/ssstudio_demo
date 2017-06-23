class CreatePhotographrs < ActiveRecord::Migration
  def change
    create_table :photographrs do |t|
      t.string :email
      t.string :fname
      t.string :lname
      t.string :phone
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.date :birthdate

      t.timestamps null: false
    end
  end
end
