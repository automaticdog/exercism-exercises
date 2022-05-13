class LogLineParser
  def initialize(line)
  @line = line
  end

  def message
    regex = /\[(.*?):/
    @line.slice! regex
    new_message = @line.strip
  end

  def matching
    @line.match(/(.)\[/)[0]
  end
end

warning = LogLineParser.new("[WARNING]: something something something")

puts "example =>"
p "#{LogLineParser.new('[ERROR]: Stack overflow').message}"

puts warning.message
puts warning.message.frozen?
p warning.message
puts warning.message.is_a?(String)