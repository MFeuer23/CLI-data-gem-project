class MtaServiceStatus::Cli

  def call
    menu
    goodbye
  end

  def menu

      puts "To view the current status of MTA service, enter status"
      puts "To view the status of one train, enter train line"
      input = nil
    while input != "EXIT"
      puts "enter status, train line, or exit"
      input = gets.chomp.upcase
      case input
      when"status"
          Train.status
      when "1", "2", "3"
          Train.detail_scrape
          Train.all.detect do |train| 
            if train.name == "123" && train.status == "Good Service"
              puts "#{train.status}"
            elsif train.name == "123" && train.status != "Good Service"
              puts "#{train.detail} - #{train.message}"
            end
          end
      
      
      
      when "4", "5", "6"
          puts "good! #{input}"
          #Good to go, or more specific delay detail
      when "7"
          puts "good! #{input}"
          #Good to go, or more specific delay detail
      when "A", "C", "E"
          puts "good! #{input}"
          #Good to go, or more specific delay detail
      when "B", "D", "F", "M"
          puts "good! #{input}"
          #Good to go, or more specific delay detail
      when "G"
          puts "good! #{input}"
          #Good to go, or more specific delay detail
      when "J", "Z"
          puts "good! #{input}"
          #Good to go, or more specific delay detail
      when "L"
          puts "good! #{input}"
          #Good to go, or more specific delay detail
      when "N", "Q", "R", "W"
          puts "good! #{input}"
          #Good to go, or more specific delay detail
      when "S"
          puts "good! #{input}"
          #Good to go, or more specific delay detail
      when "SIR"
          puts "good! #{input}"
          #Good to go, or more specific delay detail
      when "EXIT"
          nil
      else
          puts "please enter train line, status, or exit"
      end
    end
  end

  def goodbye
    puts "Happy Travels! Know before you go :)"
  end

end
