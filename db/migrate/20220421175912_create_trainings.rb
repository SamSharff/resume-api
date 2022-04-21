class CreateTrainings < ActiveRecord::Migration[7.0]
  def change
    create_table :trainings do |t|
      t.integer :user_id
      t.string :type
      t.string :org_or_institution
      t.string :description
      t.string :dates
      t.string :degree_or_cert
      t.string :location
      t.string :misc

      t.timestamps
    end
  end
end
