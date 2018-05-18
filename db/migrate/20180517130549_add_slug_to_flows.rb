class AddSlugToFlows < ActiveRecord::Migration[5.2]
  def change
    add_column :flows, :slug, :string
  end
end
