require 'pry'
require './lib/night_writer'
require './lib/grid'
require 'simplecov'
SimpleCov.start

RSpec.describe Grid do

  context 'Iteration 2: Building a Braille grid' do

    character = Grid.new

    it 'create a 3x2 grid' do
      expect(character).to be_a(Grid)
      expect { character.render }.to output(
            <<~EXPECTED
              ..
              ..
              ..
            EXPECTED
          ).to_stdout
    end

  end
end
