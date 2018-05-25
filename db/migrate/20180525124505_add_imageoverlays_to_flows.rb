class AddImageoverlaysToFlows < ActiveRecord::Migration[5.2]
  def change
    add_column :flows, :image_overlay, :text
  end
end
