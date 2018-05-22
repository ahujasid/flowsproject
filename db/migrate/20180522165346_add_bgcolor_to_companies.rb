class AddBgcolorToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :bgcolor, :string
  end
end
