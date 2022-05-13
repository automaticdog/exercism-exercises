# ==== This was working in terminal, but failing in the Exercism evaluator 
#      with a "frozen string" error...no clue why
#               -------------------------------
# class LogLineParser
#   def initialize(line)
#   @line = line
#   end
#
#   def message
#     regex = /\[(.*?):/
#     @line.slice! regex
#     new_message = @line.strip
#   end
#
#   def matching
#     @line.match(/(.)\[/)[0]
#   end
# end
#
# warning = LogLineParser.new("[WARNING]: something something something")
#
# puts "example =>"
# p "#{LogLineParser.new('[ERROR]: Stack overflow').message}"
#
# puts warning.message
# puts warning.message.frozen?
# p warning.message
# puts warning.message.is_a?(String)



class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    parsed = @line.split(':')
    parsed[1].strip
  end

  def log_level
    level = @line.split(':')[0]
    unbracket = level.gsub('[', '')
    result = unbracket.gsub(']', '')
    result.downcase
  end
  
  def reformat
    message = self.message
    level = self.log_level
    puts "#{message} (#{level})"
  end
end

puts LogLineParser.new('[ERROR]: Segmentation fault').reformat