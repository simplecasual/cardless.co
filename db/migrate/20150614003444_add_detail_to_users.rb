class AddDetailToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :twitter, :string
    add_column :users, :bio, :string
  end
end
