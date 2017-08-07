class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.boolean :header, :null => false, :default => false
      t.string :title
      t.text :content
      t.integer :number
      t.references :course, index: true, foreign_key: true

      t.timestamps
    end
  end
end
