require 'pry'



class InputOutput

  def initialize(in = ARGV[0], out = ARGV[1])
    @in = in
    @out = out
  end

  def read
    File.open(AGRV[0], "r")
  end


end
