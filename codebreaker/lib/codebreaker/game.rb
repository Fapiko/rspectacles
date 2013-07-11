require 'codebreaker/marker'

module Codebreaker
  class Game
    def initialize(output)
      @output = output
    end

    def start(secret_code)
      @secret_code = secret_code
      @output.puts 'Welcome to Codebreaker!'
      @output.puts 'Enter guess:'
    end

    def guess(guess)
      marker = Marker.new(@secret_code, guess)
      @output.puts '+' * marker.exact_match_count + '-' * marker.number_match_count
    end
  end
end
