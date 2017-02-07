class CreateParities < ActiveRecord::Migration[5.0]
  def change
    create_table :parities do |t|
      t.float :hk_cn, :comment => "港币-人民币(RMB)"
      t.float :cn_hk, :comment => "人民币-港币(HKD)"
      t.date    :date
      t.timestamps
    end
  end
end
