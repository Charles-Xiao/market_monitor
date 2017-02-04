class CreateGolds < ActiveRecord::Migration[5.0]
  def change
    create_table :golds do |t|
      t.integer :ca_price, :comment => "内地金价(RMB)"
      t.integer :hk_price, :comment => "香港金价(HKD)"
      t.date    :date
      t.timestamps
    end
  end
end
