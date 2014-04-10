class CreateEarlyUsers < ActiveRecord::Migration
  def change
    create_table :early_users do |t|
      t.string :email,  :unique => true, :presence => true

      t.timestamps
    end
  end
end
