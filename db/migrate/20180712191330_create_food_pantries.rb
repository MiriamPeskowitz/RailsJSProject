class CreateFoodPantries < ActiveRecord::Migration[5.2]
  def change
    create_table :food_pantries do |t|

      t.timestamps
    end
  end
end
