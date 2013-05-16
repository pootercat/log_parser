class LogParser

  def self.count(logfile, regex)
    counter = 0
    logfile.each_line do |line|
      counter += 1 if line.match(regex)
    end
    counter
  end

  def self.find(logfile, regex)
    matches = []
    logfile.each_line do |line|
      matches.push line if line.match(regex)
    end
    matches
  end

end
