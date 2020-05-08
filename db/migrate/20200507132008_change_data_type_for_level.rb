class ChangeDataTypeForLevel < ActiveRecord::Migration[6.0]
  def change
    change_column(:lessons, :level, :string)
  end
end
