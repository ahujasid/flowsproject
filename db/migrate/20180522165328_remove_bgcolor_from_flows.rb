class RemoveBgcolorFromFlows < ActiveRecord::Migration[5.2]
  def change
    remove_column :flows, :bgcolor, :string
  end
end
