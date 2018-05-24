class AddDispnameToFlows < ActiveRecord::Migration[5.2]
  def change
    add_column :flows, :display_name, :string
  end
end
