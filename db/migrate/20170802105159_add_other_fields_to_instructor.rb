class AddOtherFieldsToInstructor < ActiveRecord::Migration[5.1]
  def change
    add_column :instructors, :company_name, :string
    add_column :instructors, :profile, :text
  end
end
