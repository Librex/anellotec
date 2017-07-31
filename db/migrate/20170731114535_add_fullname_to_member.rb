class AddFullnameToMember < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :fullname, :string
  end
end
