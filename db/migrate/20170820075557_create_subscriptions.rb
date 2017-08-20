class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.references :course, foreign_key: true
      t.references :member, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
