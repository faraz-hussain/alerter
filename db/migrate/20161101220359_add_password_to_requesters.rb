class AddPasswordToRequesters < ActiveRecord::Migration[5.0]
  def change
    add_column :requesters, :password, :string
  end
end
