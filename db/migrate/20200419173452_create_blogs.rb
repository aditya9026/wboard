class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.boolean  :published
      t.datetime :published_at
      t.string :category, null: false
      t.string :sub_category
      t.timestamps
    end
  end
end
