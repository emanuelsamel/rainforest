class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string   :name
      t.text     :description
      t.integer  :price_in_cents
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end#do
  end#def
end#class 
