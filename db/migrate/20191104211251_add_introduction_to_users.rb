class AddIntroductionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :shots, :date, :datetime
  end
end
