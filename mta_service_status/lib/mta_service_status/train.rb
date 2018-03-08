
class Train
  attr_accessor :name, :status, :time_posted, :message
  @@all = []
  @@train_name_array = ["123", "456", "7", "ace", "bdfm", "g", "jz", "l", "nqrw", "s", "sir"]
  def initialize(name, status)
    @name = name
    @status = status
    @@all << self
  end

  def self.all
    @@all
  end

  def self.status_scrape
    self.all.clear
    html = open('http://service.mta.info/ServiceStatus/status.html')
    doc = Nokogiri::HTML(html)
   
    status_array = doc.css("td.subwayCategory").collect {|train| train.text}
    @@train_name_array.each_with_index do |name, index|
      name = self.new(name, status_array[index])
    end
  end
    
  def self.status
    status_scrape
    @@all.each {|train| puts "  #{train.name.upcase} - #{train.status}"}
    
  end
  
  def time_posted(train)
    #@time posted = Scraper.
  end
end
