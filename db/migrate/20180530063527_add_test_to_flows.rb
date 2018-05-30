class AddTestToFlows < ActiveRecord::Migration[5.2]
  def change
    add_column :flows, :test, :text
  end
end
