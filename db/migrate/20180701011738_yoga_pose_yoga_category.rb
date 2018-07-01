class YogaPoseYogaCategory < ActiveRecord::Migration[5.0]
  def change
    create_table :yoga_pose_yoga_categories do |t|
      t.belongs_to :yoga_category, foreign_key: true
      t.belongs_to :yoga_pose, foreign_key: true
    end
  end
end
