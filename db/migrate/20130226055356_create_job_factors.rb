class CreateJobFactors < ActiveRecord::Migration
  def change
    create_table :job_factors do |t|
      t.string :name
      t.string :code
      t.integer :point_table_id

      t.timestamps
    end
  end
end
