class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :type
      t.belongs_to :restaurant, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
