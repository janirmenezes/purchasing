class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :userName
      t.string :passWord
      t.string :email

      t.timestamps
    end
  end
end
