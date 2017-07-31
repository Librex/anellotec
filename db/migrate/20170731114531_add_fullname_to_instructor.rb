class AddFullnameToInstructor < ActiveRecord::Migration[5.1]
  def change
    add_column :instructors, :fullname, :string
  end
end
