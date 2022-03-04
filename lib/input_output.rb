require 'pry'



class InputOutput

  def initialize(arguments)
    @in = args[0]
    @out = args[1]
  end

  def read
    File.open(AGRV[0], "r")
  end


end
