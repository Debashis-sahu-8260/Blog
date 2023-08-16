class AddUserToBlogings < ActiveRecord::Migration[7.0]
  def change
    add_reference :blogings, :user, foreign_key: true
  end
end