class CreateIngridients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingridients do |t|
      t.string :name
      t.integer :quantity
      t.integer :recipe_id
      end
  end
end
