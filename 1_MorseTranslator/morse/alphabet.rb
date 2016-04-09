module Morse

  class Alphabet

    attr_reader :alphabet

    def initialize(alphabet)
      @alphabet = alphabet
    end

    def tokenize(msg)
      yield
    end

  end
end