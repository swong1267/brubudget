class CreateExpenditures < ActiveRecord::Migration
  def change
    create_table :expenditures do |t|
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :quantity
      t.string :name
      t.datetime :purchase_date
      t.timestamps null: false
    end
  end
end