class CreateJobPositions < ActiveRecord::Migration[5.0]
  def change
    create_table :job_positions do |t|
      t.string :slug, null: false
      t.string :status, default: 'draft'
      t.string :title, null: false
      t.references :job_category, foreign_key: true, null: false
      t.string :labels
      t.string :time_commitment
      t.text :description
      t.text :responsibilities
      t.text :requirements
      t.text :apply_instructions
      t.datetime :published_at

      t.timestamps
    end
    add_index :job_positions, :slug, unique: true
  end
end
