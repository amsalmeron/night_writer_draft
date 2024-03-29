require 'pry'
require './lib/night_writer'
require 'simplecov'
SimpleCov.start

RSpec.describe NightWriter do

  context 'Iteration 1' do

    night = NightWriter.new("./message.txt", "./braille.txt")

    it 'can read a file' do
      expect(night).to be_a(NightWriter)
      expect(night.input_file).to eq("./message.txt")
      expect(night.read).to eq("Hello. This is what I wish to print.\n")
    end

    it 'can write a file' do
      night.write
      expect(File.read("braille.txt")).to eq("Hello. This is what I wish to print.\n")
    end

    it 'can read character count of newly written file' do
      expect(File.read("braille.txt").length).to eq(37)
    end

    it 'can read character count of newly written file' do
      lines = File.readlines("./braille.txt")
      text = lines.join
      total_char = text.length
      expect(night.display).to eq("Created '#{night.output_write}' containing #{total_char} characters")
    end

  end
end
