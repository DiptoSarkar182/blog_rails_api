class CreateBlogs < ActiveRecord::Migration[7.2]
  def change
    create_table :blogs do |t|
      t.references :user, foreign_key: true, null: false
      t.string :title, null: false
      t.text :content, null: false
      t.timestamps
    end
  end
end
