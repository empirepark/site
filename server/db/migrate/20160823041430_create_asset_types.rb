class CreateAssetTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :asset_types do |t|
      t.string :name, null: false
      t.string :description
      t.string :thumbnail_dimensions, default: '100x100'
      t.string :min_dimensions
      t.string :max_dimensions
      t.boolean :optimize
      t.string :allowed_filetypes, null: false

      t.timestamps
    end
  end
end
