class Scrape
  @@train_name_array = ["123", "456", "7", "ACE", "BDFM", "G", "JZ", "L", "NQRW", "S", "SIR"]
  
   def self.status_scrape
    Train.all.clear
    doc = Nokogiri::HTML(open('http://service.mta.info/ServiceStatus/status.html'))

    status_array = doc.css("td.subwayCategory").collect {|train| train.text}
    @@train_name_array.each_with_index do |name, index|
      Train.new(name, status_array[index])
    end
  end
  
  def self.detail_scrape
    status_scrape

    Train.all.each do |train|
      if train.status == "Good Service"
        train.detail = ""
        train.message = ""
      else
          doc = Nokogiri::HTML(open("http://alert.mta.info/status/subway/#{train.name}/"))
          train.parse(doc, train)
      end
    end
  end
end

module Scraper
  
  def parse(doc, train)
    alt_tags = doc.css('img').map{ |i| i['alt'] } 
    icons = alt_tags.uniq.reject { |a| a.nil? }
    train.detail = icons.collect {|icon| icon.chomp!(" Icon")}
    train.message = doc.css("#status_display").text.gsub!(/(&nbsp;|\s)+/, " ")
  end
  
end
