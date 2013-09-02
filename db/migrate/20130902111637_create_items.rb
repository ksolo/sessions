class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :cart
      t.belongs_to :product
      t.timestamps
    end
  end
end
