json.status    0
json.dates     @price.pluck(:date)
json.cn_prices @price.pluck(:ca_price)
json.hk_prices @price.pluck(:hk_price)
