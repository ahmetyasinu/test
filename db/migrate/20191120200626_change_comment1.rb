class UpdatePostsChangeComment1Column < ActiveRecord::Migration
  def change
    change_column :vehicles, :comment1, :text
  end
end