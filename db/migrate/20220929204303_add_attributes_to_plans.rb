class AddAttributesToPlans < ActiveRecord::Migration[7.0]
  def change
    add_column :plans, :location, :string
    add_column :plans, :category, :string
    add_column :plans, :intensity, :string
    add_column :plans, :starting_time, :datetime
    add_column :plans, :finish_time, :datetime
  end
end
