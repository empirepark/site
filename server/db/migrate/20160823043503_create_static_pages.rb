class CreateStaticPages < ActiveRecord::Migration[5.0]
  def change
    create_table :static_pages do |t|
      t.integer :sort_order, null: false
      t.string :slug, null: false
      t.string :status, default: 'draft'
      t.string :title, null: false
      t.text :content
      t.references :media_asset, foreign_key: true
      t.datetime :published_at

      t.timestamps
    end
    add_index :static_pages, :slug, unique: true
  end
end
