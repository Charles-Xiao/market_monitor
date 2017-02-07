class Crawler

class << self

  def init_crawler
    @agent = Mechanize.new
    @agent.user_agent = 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6'
  end

  def get_gold_price(url)
    init_crawler
    page = @agent.get(url)
    hk_price = page.search('table.gold-content-table').search('td.tc\ f-Georgia')[0].text
    ca_price = page.search('table.gold-content-table-inland').search('td.tc\ f-Georgia')[0].text
    Gold.create!(hk_price: hk_price, ca_price: ca_price, date: Time.now)
  end

  def get_parity(url)
    init_crawler
    page = @agent.get(url)
    text_arr = page.search('div.op_exrate_result').search('div')[0].text.split('=')
    hk_cn = text_arr[1].split('人')[0]
    cn_hk = text_arr[2].split('港')[0]
    Parity.create!(hk_cn: hk_cn, cn_hk: cn_hk, date: Time.now)
  end

end

end
