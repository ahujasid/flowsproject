class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :flows, :type, :screen
  end
end
