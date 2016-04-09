module Morse
  module Utils
    class Help

      class << self
        def show(valid=false)
          puts "Bad arguments..."
          puts 'Try: ruby morse-trasnslator "Hello world!"'
          puts 'Or try: ruby morse-trasnslator ".... . .-.. .-.. --- / .-- --- .-. .-.. -.."'
          if valid
            puts "Valid English alphabet: #{Morse::EnglishAlphabet.new.alphabet.keys}"
            puts "Valid Morse alphabet: #{Morse::MorseAlphabet.new.alphabet.keys}"
          end
        end
      end

    end
  end
end