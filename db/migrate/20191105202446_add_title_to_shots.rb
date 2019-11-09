class AddTitleToShots < ActiveRecord::Migration[5.2]
  def change
    add_column :shots, :title, :string
  end
end
