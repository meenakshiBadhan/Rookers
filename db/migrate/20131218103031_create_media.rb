class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :title
      t.string :description
      t.integer :rating
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
