class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.strip :date
      t.integer :price
      t.integer :page
      t.integer :ISBN

      t.timestamps
    end
  end
end
