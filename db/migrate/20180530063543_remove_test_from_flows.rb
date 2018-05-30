class RemoveTestFromFlows < ActiveRecord::Migration[5.2]
  def change
    remove_column :flows, :test, :text
  end
end
