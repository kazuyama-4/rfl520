class CreateManagements < ActiveRecord::Migration[6.0]
  def change
    create_table :managements do |t|
      t.string  :item,        null: false
      t.integer :category_id, null: false
      t.date    :deadline,    null: false
      t.references :user,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
