class RenameTypeColumnInTrainings < ActiveRecord::Migration[7.0]
  def change
    rename_column :trainings, :type, :category
  end
end
