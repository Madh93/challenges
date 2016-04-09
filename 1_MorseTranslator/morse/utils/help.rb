module Morse
  module Utils
    class Help

      class << self
        def show(valid:false)
          puts "Bad arguments..."
          puts 'Try: ruby morse-trasnlator "Hello world!"'
          puts 'Or try: ruby morse-trasnlator ".... . .-.. .-.. --- / .-- --- .-. .-.. -.."'
          if valid
            puts "Valid English alphabet: #{Morse::EnglishAlphabet.new.alphabet.keys}"
            puts "Valid Morse alphabet: #{Morse::MorseAlphabet.new.alphabet.keys}"
          end
        end
      end

    end
  end
end