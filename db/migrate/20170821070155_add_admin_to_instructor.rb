class AddAdminToInstructor < ActiveRecord::Migration[5.1]
  def change
    add_column :instructors, :admin, :boolean, :default => false
  end
end
