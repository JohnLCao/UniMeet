class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.text :bio
      t.integer :bool_drink
      t.integer :party
      t.integer :study
      t.boolean :commute

      t.timestamps null: false
    end
  end
end
