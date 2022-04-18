class RenameIsCompletedColumnToPosts < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :isCompleted, :is_completed
  end
end
