class CreateBlogings < ActiveRecord::Migration[7.0]
  def change
    create_table :blogings do |t|

      t.timestamps
    end
  end
end
