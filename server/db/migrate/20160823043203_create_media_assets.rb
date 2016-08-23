class CreateMediaAssets < ActiveRecord::Migration[5.0]
  def change
    create_table :media_assets do |t|
      t.string :title, null: false
      t.text :description
      t.text :internal_notes
      t.string :url, null: false
      t.references :asset_type, foreign_key: true
      t.timestamps
    end
  end
end
