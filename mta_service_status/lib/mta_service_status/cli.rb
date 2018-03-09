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
      when"STATUS"
          Train.status
      when "1", "2", "3", "4", "5", "6", "7", "A", "C", "E", "B", "D", "F", "M", "G", "J", "Z", "L", "N", "Q", "R", "W", "S", "SIR"
          Train.detail_scrape
          Train.all.detect do |train| 
         
            if train.name.include?(input) && train.status == "Good Service"
              puts "#{train.status}"
            elsif train.name.include?(input) && train.status != "Good Service"
              puts "#{train.detail} - #{train.message}"
            end
          end
    
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
