class AddPostIdIndexToComments < ActiveRecord::Migration[6.0]
  def change
    add_index  :comments, :post_id
  end
end
