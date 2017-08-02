class AddOtherFieldsToMember < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :company_name, :string
    add_column :members, :profile, :text
  end
end
