class CreateBokkings < ActiveRecord::Migration[7.0]
  def change
    create_table :bokkings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :plan, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
