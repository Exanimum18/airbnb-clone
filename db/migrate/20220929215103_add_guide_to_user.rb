class AddGuideToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :guide, :boolean
  end
end
