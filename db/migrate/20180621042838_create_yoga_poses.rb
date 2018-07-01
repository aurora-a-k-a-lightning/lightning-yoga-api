class CreateYogaPoses < ActiveRecord::Migration[5.0]
  def change
    create_table :yoga_poses do |t|
      t.string :sanskrit_name
      t.string :english_name
      t.string :img_url

      t.timestamps
    end
  end
end
