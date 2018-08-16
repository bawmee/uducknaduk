class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :videourl
      t.references :user, foreign_key: true

      t.timestamps null: false
    end
  end
end
