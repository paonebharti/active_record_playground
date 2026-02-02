require "active_record"

class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.decimal :total_amount, precision: 10, scale: 2, null: false
      t.integer :status, default: 0, null: false
      t.integer :lock_version, default: 0, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
