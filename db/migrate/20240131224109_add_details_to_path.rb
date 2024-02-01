class AddDetailsToPath < ActiveRecord::Migration[6.1]
  def change
    add_column :paths, :details, :string
  end
end
