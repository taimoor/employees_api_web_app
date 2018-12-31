class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :salary
      t.string :gender
      t.string :designation
      t.string :code

      t.timestamps
    end
  end
end
