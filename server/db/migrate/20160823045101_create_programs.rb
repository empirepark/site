class CreatePrograms < ActiveRecord::Migration[5.0]
  def change
    create_table :programs do |t|
      t.string :slug, null: false
      t.integer :sort_order, null: false
      t.string :status, default: 'draft'
      t.string :title, null: false
      t.string :cost
      t.string :audience
      t.references :media_asset, foreign_key: true
      t.text :excerpt
      t.text :content
      t.datetime :published_at

      t.timestamps
    end
    add_index :programs, :slug, unique: true
  end
end
