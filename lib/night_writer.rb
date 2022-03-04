
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
      File.read("./#{@input}")
    end
  end

end

h = NightWriter.new(ARGV[0])


puts h.read
