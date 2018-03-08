
class Train
  attr_accessor :name, :status, :detail
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
      self.new(name, status_array[index])
    end
  end
    
  def self.status
    status_scrape
    @@all.each {|train| puts "  #{train.name.upcase} - #{train.status}"}
  end
  
  def detail_scrape
  
    one_two_three = @@all[0]
    if one_train.status == "Good Service"
      puts "gooood"
    else 
      html = open('http://alert.mta.info/status/subway/BDFM/')
      doc = Nokogiri::HTML(html)
      # train line: doc.css("#status_display img").attr('alt').value
      # time_posted and message : doc.css("#status_display").text.strip
      
      
    end
  end
end
