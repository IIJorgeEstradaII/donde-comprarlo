class CreateOffers < ActiveRecord::Migration[8.0]
  def change
    create_table :offers do |t|
      t.references :product, null: false, foreign_key: true
      t.references :store, null: false, foreign_key: true
      t.decimal :price
      t.string :currency
      t.string :url
      t.datetime :last_checked

      t.timestamps
    end
  end
end
