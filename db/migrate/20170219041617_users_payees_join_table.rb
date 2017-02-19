class UsersPayeesJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :payees_users do |t|
      t.integer :payee_id
      t.integer :user_id
    end
  end
end
