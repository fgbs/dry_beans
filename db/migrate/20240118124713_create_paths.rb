class CreatePaths < ActiveRecord::Migration[6.1]
  def change
    create_table :paths do |t|
      t.string :purpose
      t.integer :distance
      t.datetime :start_at
      t.datetime :end_at
      t.float :estimated_time

      t.timestamps
    end
  end
end
