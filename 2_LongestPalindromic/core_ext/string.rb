class String
  def longest_palindromic
    longest, tmp = "",""
    reverse = self.reverse

    self.each_char.with_index(0) do |c,i|
      if c == reverse[i]
        tmp << c
      else
        tmp = ""
      end
      if tmp.size > longest.size
        longest = tmp 
      end
    end
  
    longest
  end
end