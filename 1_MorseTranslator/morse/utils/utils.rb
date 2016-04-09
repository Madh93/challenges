module Morse
  module Utils

    class << self
      def alphanumeric?(str)
        (str.tr(' ','') =~ /\A[[:alnum:]]+\z/).nil?
      end

      def valid_input?(str)
        !(str.tr(' ','') =~ /\A[[:alnum:] | \/ | . | -]+\z/).nil?
      end
    end

  end
end