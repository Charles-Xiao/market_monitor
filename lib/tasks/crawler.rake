namespace :crawler do

  desc '爬取数据'
  task crawl: :environment do
    Crawler.get_gold_price Constant::GOLD_PRICE_URL
    Crawler.get_parity Constant::PARITIES_URL
    puts "Done!"
  end

end
