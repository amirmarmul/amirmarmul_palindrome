# frozen_string_literal: true

require_relative "amirmarmul_palindrome/version"

module AmirmarmulPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      false
    else 
      processed_content == processed_content.reverse
    end
  end

  private 
    # Returns content for palindrome testing.
    def processed_content
      to_s.scan(/[a-z0-9]/i).join.downcase
    end
end

class String
  include AmirmarmulPalindrome
end

class Integer 
  include AmirmarmulPalindrome
end
