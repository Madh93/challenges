module Morse

  class Translator
    def initialize
      @message = nil
      @alphabet = nil
    end

    def translate(msg)
      @message = msg
      @alphabet = get_alphabet

      tokens = @alphabet.tokenize(@message)
      output = ""

      tokens.each do |t|
        output << "#{@alphabet.alphabet[t]}"
        output << " " if (@alphabet.class == Morse::EnglishAlphabet)
      end

      puts output
    end

    private

    def get_alphabet
      if Morse::Utils.alphanumeric? @message
        Morse::MorseAlphabet.new
      else
        Morse::EnglishAlphabet.new
      end
    end

  end
end