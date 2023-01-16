class AddDirTypeToDirectories < ActiveRecord::Migration[7.0]
  def change
    add_column :directories, :dir_type, :integer
  end
end
