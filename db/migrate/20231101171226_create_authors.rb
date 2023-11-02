class CreateAuthors < ActiveRecord::Migration[7.1]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
    
    def change
      add_column :users, :password_digest, :string
  end 
    

  end
end
