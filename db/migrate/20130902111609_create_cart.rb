class CreateCart < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.belongs_to :user
      t.datetime   :checked_out_at
      t.timestamps
    end
  end
end
