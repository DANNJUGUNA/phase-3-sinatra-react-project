class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
    t.string :name
    t.text :description
    t.text :instructions
    end
  end
end
