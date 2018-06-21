class CreateYogaCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :yoga_categories do |t|
      t.string :name
      t.string :short_name
      t.string :description
      t.integer :parent_yoga_category_id, references: :yoga_category, foreign_key: true

      t.timestamps
    end
  end
end
