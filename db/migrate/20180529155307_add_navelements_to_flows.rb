class AddNavelementsToFlows < ActiveRecord::Migration[5.2]
  def change
    add_column :flows, :nav_elements, :text
  end
end
