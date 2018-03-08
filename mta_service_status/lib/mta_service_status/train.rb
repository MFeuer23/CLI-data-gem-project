
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
    html = open('http://service.mta.info/ServiceStatus/status.html')
    doc = Nokogiri::HTML(html)
   
    status_array = doc.css("td.subwayCategory").collect {|train| train.text}
    @@train_name_array.each_with_index do |name, index|
      name = self.new(name, status_array[index])
    end
    
    # 123_train = self.new("123", status_array[0])
    # 456_train = self.new("456", status_array[1])
    # 7_train = self.new("7", status_array[2])
    # ace_train = self.new("ACE", status_array[3])
    # 123_train = self.new("123", status_array[0])
    # 123_train = self.new("123", status_array[0])
    # 123_train = self.new("123", status_array[0])
    # 123_train = self.new("123", status_array[0])
    # 123_train = self.new("123", status_array[0])
    # 123_train = self.new("123", status_array[0])
    # 123_train = self.new("123", status_array[0])
      
    
    
  end
  
  def time_posted(train)
    #@time posted = Scraper.
  end
end
