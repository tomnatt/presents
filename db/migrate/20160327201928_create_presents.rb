class CreatePresents < ActiveRecord::Migration
  def change
    create_table :presents do |t|
      t.string :title
      t.text :description
      t.string :url
      t.decimal :price

      t.timestamps null: false
    end
  end
end
