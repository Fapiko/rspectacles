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
      mark = ''
      (0..3).each do |index|
        if exact_match?(guess, index)
          mark << '+'
        end
      end

      (0..3).each do |index|
        if number_match?(guess, index)
          mark << '-'
        end
      end

      @output.puts mark
    end

    def number_match?(guess, index)
      @secret_code.include?(guess[index]) && !exact_match?(guess, index)
    end

    def exact_match?(guess, index)
      guess[index] == @secret_code[index]
    end
  end
end
