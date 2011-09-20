class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :state
      t.string :city
      t.string :country
      t.integer :zipcode
      t.boolean :seller
      t.date :dob
      t.integer :contact
      t.string :password
      t.string :secret_question
      t.string :secret_answer

      t.timestamps
    end
  end
end
