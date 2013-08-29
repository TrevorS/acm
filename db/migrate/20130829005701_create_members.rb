class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :major
      t.boolean :fees_paid
      t.boolean :campus_resident
      t.boolean :volunteer
      t.string :referrer
      t.integer :recruiter_id
      t.text :interests
      t.integer :position_id

      t.timestamps
    end
  end
end
