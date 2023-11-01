class CreateOrganizations < ActiveRecord::Migration[7.1]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :taxpayer_identification_number

      t.timestamps
    end
  end
end
