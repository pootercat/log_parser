class LogParser

  def initialize logfile
    #parse_by_date      #this should go back by the number of days you tell it to
    puts "Using log file: #{logfile}"
    begin
      FileUtils.cp logfile, 'logs/temp.log'
      @logfile = File.open('logs/temp.log')
    rescue Exception => e
      puts "WHOOOOAAA, I have no idea what you are trying to do: #{e.message}\n"
    end
  end

  def count regex
    counter = 0
    @logfile.each_line do |line|
      counter += 1 if line.match(regex)
    end
    counter
  end

  def find regex
    matches = []
    @logfile.each_line do |line|
      matches.push line if line.match(regex)
    end
    matches
  end

end
