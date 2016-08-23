class CreateJobCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :job_categories do |t|
      t.string :title, null: false
      t.text :description

      t.timestamps
    end
  end
end
