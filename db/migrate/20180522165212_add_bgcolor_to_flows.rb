class AddBgcolorToFlows < ActiveRecord::Migration[5.2]
  def change
    add_column :flows, :bgcolor, :string
  end
end
