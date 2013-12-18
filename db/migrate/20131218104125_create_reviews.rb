class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :content
      t.integer :media_id
      t.integer :user_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
