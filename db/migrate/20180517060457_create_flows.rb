class CreateFlows < ActiveRecord::Migration[5.2]
  def change
    create_table :flows do |t|
      t.string :name
      t.text :tags
      t.string :thumbnail_img
      t.integer :no_of_images
      t.string :type
      t.text :images
      t.references :company, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
