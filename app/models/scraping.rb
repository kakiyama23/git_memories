class Scraping
  def self.get_product
    agent = Mechanize.new
    page = agent.get("https://www.city.funabashi.lg.jp/funakkonavi/guide/8009/8203/index.html")
    elements = page.search('.sidebar a')
   elements.each do |ele|
     title = ele.inner_text
     url = 'https://www.city.funabashi.lg.jp' + ele.get_attribute('href')
     product = Product.where(title: title, url: url).first_or_initialize
     product.save
   end
  end
end

