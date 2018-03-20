module Scraper
  
  def parse(doc, train)
    alt_tags = doc.css('img').map{ |i| i['alt'] } 
    icons = alt_tags.uniq.reject { |a| a.nil? }
    train.detail = icons.collect {|icon| icon.chomp!(" Icon")}
    train.message = doc.css("#status_display").text.gsub!(/(&nbsp;|\s)+/, " ")
  end
  
end
