class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.belongs_to :supplier, index: true
      t.datetime :logged_in_at

      t.timestamps null: false
    end
    add_foreign_key :logins, :suppliers
  end
end
