


class NightWriter

  attr_reader :filename

  def initialize(filename)
    @filename = filename
  end

  def read
    File.read("./spec/fixtures/#{@filename}")
  end

end
