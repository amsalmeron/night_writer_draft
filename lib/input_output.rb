require 'pry'



class InputOutput

  def initialize
    @filename = filename
  end

  def read
    File.open(AGVR[0], "r")
  end


end
