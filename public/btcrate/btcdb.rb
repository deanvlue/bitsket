#!/usr/bin/env ruby
require 'sqlite3' 
require 'json'
require 'open-uri'


def addrate(btcmxn, mxnbtc)
  begin
    db = SQLite3::Database.open('/home/deanvlue/dev/bitsket/db/development.sqlite3')
    db.execute "insert into rates(mxnbtc,btcmxn,created_at, updated_at) values (#{btcmxn},#{mxnbtc}, (datetime('now','localtime')),(datetime('now','localtime')));"
  
  rescue SQLite3::Exception => e
    puts "Ha ocurrido Excepcion!"
    puts e

  ensure
    db.close if db

  end
    
end

coinbasexng = 'https://coinbase.com/api/v1/currencies/exchange_rates'

@btcmxn = JSON.parse(open(coinbasexng).read)
addrate  @btcmxn["mxn_to_btc"], @btcmxn["btc_to_mxn"]



