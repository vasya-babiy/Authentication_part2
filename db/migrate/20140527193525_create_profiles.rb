class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.date :birth_date
      t.timestamps
    end
  end
end