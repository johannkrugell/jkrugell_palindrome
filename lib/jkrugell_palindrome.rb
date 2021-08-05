# frozen_string_literal: true

require_relative "jkrugell_palindrome/version"

module JkrugellPalindrome

# Returns true for a palindrome, false otherwise.
def palindrome?
  processed_content == processed_content.reverse
end

def letters
  # self.chars.select { |c| c.match(/[a-z]/i) }.join
  self.scan(/[a-z\d]/i).join
end

private

  # Returns content for palindrome testing.
  def processed_content
    self.to_s.letters.downcase
  end
  
end

class String
  include JkrugellPalindrome
end

class Integer
  include JkrugellPalindrome
end