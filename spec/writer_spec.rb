require 'pry'
require './lib/writer'
require 'simplecov'
SimpleCov.start

RSpec.desccribe Writer do

  context 'Iteration 1' do
    before :each do
      read = Writer.new("message.txt")
    end

    it 'can read a file' do
      expect(read).to be_a(Writer)
      expect(read).to be_a(File)
    end

  end
end
