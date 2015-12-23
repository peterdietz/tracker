class CreateUtilityCustomers < ActiveRecord::Migration
  def change
    create_table :utility_customers do |t|
      t.references :utility, index: true
      t.references :user, index: true
      t.string :accountNumber

      t.timestamps null: false
    end
    add_foreign_key :utility_customers, :utilities
    add_foreign_key :utility_customers, :users
  end
end
