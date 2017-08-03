class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :abstract
      t.boolean :active, default: false, null: false
      t.references :instructor, foreign_key: true

      t.timestamps
    end
  end
end
