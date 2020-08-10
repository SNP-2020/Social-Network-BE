class AddPostModelData < ActiveRecord::Migration[6.0]
  def change
    add_column(:posts, :postText, :string, { null: false })
    add_column(:posts, :imageURL, :string)
  end
end
