require_relative 'morse/alphabet'
require_relative 'morse/english_alphabet'
require_relative 'morse/morse_alphabet'
require_relative 'morse/translator'
require_relative 'morse/utils'

# Main
if ARGV[0]
  if Morse::Utils.valid_input? ARGV[0]
    Morse::Translator.new.translate(ARGV[0])
  else
    Morse::Utils::Help.show(valid:true)
  end
else
  Morse::Utils::Help.show
end