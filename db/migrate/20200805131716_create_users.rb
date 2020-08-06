class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :FirstName, null:false
      t.string :LastName, null:false
      t.string :email, null:false
      t.string :password, null:false
      t.string :gender, null:false
      t.string :about
      t.string :address
      t.string :profilePic
      t.date :birthDate,null:false
      t.integer :phoneNumber
      t.timestamps
    end
  end
end
