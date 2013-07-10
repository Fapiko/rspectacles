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
      if guess[0] == @secret_code[0]
        mark = '+'
      elsif @secret_code.include?(guess[0])
        mark = '-'
      else
        mark = ''
      end

      @output.puts mark
    end
  end
end
