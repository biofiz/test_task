desc "Fill database with data from site"
task :fill => :environment do
  require 'open-uri'
  doc = Nokogiri::HTML(open("https://habrahabr.ru", 'User-Agent' => 'firefox'))
  doc.css('a.post_title').each do |item|
    Post.create(title: item.content, link: item['href'])
  end
end
