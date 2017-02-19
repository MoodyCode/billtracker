class CreatePayees < ActiveRecord::Migration[5.0]
  def change
    create_table :payees do |t|
      t.string :name
      t.string :website
      t.timestamps
    end
  end
end
