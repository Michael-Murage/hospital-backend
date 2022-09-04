class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients  do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :birthdate
      t.string :email
      t.string :address
      t.string :phone
      t.string :town
      t.string :ailment_name
      t.string :ailment_type
      t.integer :ailment_id
    end
  end
end
