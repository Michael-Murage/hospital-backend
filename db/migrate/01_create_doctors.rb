class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors  do |t|  
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :address
      t.string :department
      t.string :practice_type
      t.string :town
      t.string :ailment_type
      t.integer :ailment_id
    end
  end
end
