class AddImageToBlogings < ActiveRecord::Migration[7.0]
  def change
    add_column :blogings, :image, :string
  end
end
