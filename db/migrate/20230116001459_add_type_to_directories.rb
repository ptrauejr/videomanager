class AddTypeToDirectories < ActiveRecord::Migration[7.0]
  def change
    add_column :directories, :type, :integer
  end
end
