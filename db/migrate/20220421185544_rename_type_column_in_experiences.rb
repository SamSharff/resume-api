class RenameTypeColumnInExperiences < ActiveRecord::Migration[7.0]
  def change
    rename_column :experiences, :type, :category
  end
end
