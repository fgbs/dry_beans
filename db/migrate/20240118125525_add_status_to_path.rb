class AddStatusToPath < ActiveRecord::Migration[6.1]
  def change
    add_column :paths, :status, :string
  end
end
