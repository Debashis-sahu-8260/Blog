class AddTitleAndOtherColumnsToBlogings < ActiveRecord::Migration[7.0]
  def change
    add_column :blogings, :title, :string
    add_column :blogings, :content, :text
  end
end
