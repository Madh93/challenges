class String
  def longest_palindromic
    longest, tmp = [],""
    max_size = 0
    reverse = self.reverse

    self.each_char.with_index(0) do |c,i|
      # Compare char
      tmp = (c == reverse[i]) ? tmp << c : ""
      # Find longest string size
      max_size = (longest.empty?) ? 0 : longest.max_by(&:size).size
      # Add in array
      longest << tmp if tmp.size >= max_size
    end
    # Remove duplicates and shortest elements
    longest.uniq.delete_if { |s| s.size < max_size }
  end
end