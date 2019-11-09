class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :family_name, :string
    add_column :users, :first_name, :string
    add_column :users, :family_name_kana, :string
    add_column :users, :first_name_kana, :string
    add_column :users, :nickname, :string
    add_column :users, :birthday, :date
    add_column :users, :gender, :string
  end
end
