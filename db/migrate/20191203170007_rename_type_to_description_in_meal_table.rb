class RenameTypeToDescriptionInMealTable < ActiveRecord::Migration[6.0]
  def change
    rename_column :meals, :type, :description
  end
end
