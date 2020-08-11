class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :postText, null:false
      t.string :imageURL
      t.timestamps
    end
  end

end
