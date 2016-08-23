class CreateFeatures < ActiveRecord::Migration[5.0]
  def change
    create_table :features do |t|
      t.integer :sort_order, null: false
      t.string :status, default: 'draft'
      t.string :title, null: false
      t.text :content
      t.references :media_asset, foreign_key: true, null: false
      t.datetime :published_at

      t.timestamps
    end
  end
end
