class Scrape
  TRAIN_NAME_ARRAY = ["123", "456", "7", "ACE", "BDFM", "G", "JZ", "L", "NQRW", "S", "SIR"]
  
   def self.status_scrape
    Train.all.clear
    doc = Nokogiri::HTML(open('http://service.mta.info/ServiceStatus/status.html'))

    status_array = doc.css("td.subwayCategory").collect {|train| train.text}
    TRAIN_NAME_ARRAY.each_with_index.collect do |name, index|
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