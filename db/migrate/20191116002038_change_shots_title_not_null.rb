class ChangeShotsTitleNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :shots, :title, false
  end
end
