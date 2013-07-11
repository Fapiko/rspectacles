module Codebreaker
  class Marker
    def initialize(secret_code, guess)
      @secret_code, @guess = secret_code, guess
    end

    def number_match_count
      total_match_count - exact_match_count
    end

    def total_match_count
      count = 0
      secret_code = @secret_code.split('')
      @guess.split('').map do |n|
        if secret_code.include?(n)
          secret_code.delete_at(secret_code.index(n))
          count += 1
        end
      end

      count
    end

    def exact_match_count
      (0..3).inject(0) do |count, index|
        count + (exact_match?(index) ? 1 : 0)
      end
    end

    def number_match?(index)
      @secret_code.include?(@guess[index]) && !exact_match?(index)
    end

    def exact_match?(index)
      @guess[index] == @secret_code[index]
    end
  end
end