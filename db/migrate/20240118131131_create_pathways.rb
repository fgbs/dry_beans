class CreatePathways < ActiveRecord::Migration[6.1]
  def change
    create_table :pathways do |t|
      t.date :date
      t.string :status

      t.timestamps
    end
  end
end
