class AddIntroductionToShots < ActiveRecord::Migration[5.2]
  def change
    add_column :shots, :text, :text
  end
end
