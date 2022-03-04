require 'pry'
require './lib/night_writer'
require 'simplecov'
SimpleCov.start

RSpec.describe NightWriter do

  context 'Iteration 1' do

    night = NightWriter.new('message.txt')

    it 'can read a file' do
      expect(night).to be_a(NightWriter)
      expect(night.filename).to eq('message.txt')
      expect(night.read).to eq("Hello.\n")
    end

  end
end
