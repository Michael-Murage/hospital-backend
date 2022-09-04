class CreateAilments < ActiveRecord::Migration[6.1]
  def change
    create_table :ailments  do |t|
      t.string :ailment_name
      t.string :ailment_type
    end
  end
end
