require 'mechanize'
  agent = Mechanize.new
  page = agent.get("https://www.city.funabashi.lg.jp/funakkonavi/guide/8009/8203/index.html")
  elements = page.search('.sidebar a')
  elements.each do |ele|
    title = ele.inner_text
    title_url = 'https://www.city.funabashi.lg.jp' + ele.get_attribute('href')
  puts title
  puts title_url
end