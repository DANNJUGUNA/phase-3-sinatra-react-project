class CreateIngridients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingridients do |t|
      t.string :name
      t.integer :quantity
      t.references :recipe, foreign_key: true
    end
  end
end
