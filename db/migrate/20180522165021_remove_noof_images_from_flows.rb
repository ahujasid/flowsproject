class RemoveNoofImagesFromFlows < ActiveRecord::Migration[5.2]
  def change
    remove_column :flows, :no_of_images, :integer
  end
end
