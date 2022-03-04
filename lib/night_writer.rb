
class NightWriter

  attr_reader :input, :output

  def initialize(input = ARGV[0], output = ARGV[1])
    @input = input
    @output = output
  end

  def read
    if ("./#{@input}").nil?
      puts "Please enter valid file path."
    else
      File.read(@input)
    end
  end

  def write
    if ("./#{@output}").nil?
      puts "No valid file path."
    else
      h = File.read(@input)
      File.write(@output,h)
    end
  end

end

# h = NightWriter.new(ARGV[0],ARGV[1])
