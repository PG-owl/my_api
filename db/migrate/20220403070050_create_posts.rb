class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :task
      t.boolean :isCompleted, default: false, null: false

      t.timestamps
    end
  end
end
