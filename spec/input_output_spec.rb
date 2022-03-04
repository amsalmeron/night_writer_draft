require 'pry'
require './lib/input_output'
require 'simplecov'
SimpleCov.start

RSpec.describe InputOutput do

  context 'Iteration 1' do

    it 'can read a file' do
      file = InputOutput.new("message.txt")
      expect(file).to be_a(InputOutput)
      expect(file.read).to be_a(File)
    end

  end
end
