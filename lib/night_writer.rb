
class NightWriter

  attr_reader :input_file, :output_write

  def initialize(input_file = ARGV[0], output_write = ARGV[1])
    @input_file = input_file
    @output_write = output_write
  end

  def read
    if ("./#{@input_file}").nil?
      puts "Please enter valid file path."
    else
      File.read(@input_file)
    end
  end

  def write
    if ("./#{@output_write}").nil?
      puts "No valid file path."
    else
      new_message = File.read(@input_file)
      File.write(@output_write,new_message)
    end
  end

  def display
    p "Created #{@output_write} containing #{write} characters"
  end

end
#
# h = NightWriter.new(ARGV[0],ARGV[1])
# h.displa
