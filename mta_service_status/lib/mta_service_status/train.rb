
class Train
  attr_accessor :name, :status, :time_posted, :message
  @@general_status = {#train => status}

  def initialize(name)
    @name = name
    @@general_status
  end
end
