class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.float :mxnbtc
      t.float :btcmxn

      t.timestamps
    end
  end
end
