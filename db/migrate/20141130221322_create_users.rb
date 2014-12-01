class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :preferred_color

      t.timestamps
    end
  end
end
