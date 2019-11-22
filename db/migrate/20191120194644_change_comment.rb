class UpdatePostsChangeCommentColumn < ActiveRecord::Migration
  def change
    change_column :drivers, :comment, :text, limit: 60000 # or whatever
  end
end