class CreatePointTables < ActiveRecord::Migration
  def change
    create_table :point_tables do |t|
      t.string :name
      t.integer :project_id

      t.timestamps
    end
  end
end
