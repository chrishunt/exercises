require 'minitest/autorun'
require 'minitest/pride'
require_relative 'regex'

describe Regex do
  describe '.match?' do
    it 'returns true when the input matches the the regex' do
      assert Regex.match?('ray', 'ray')
      assert Regex.match?('ray', 'ra.')
      assert Regex.match?('chat', '.*at')
      assert Regex.match?('pizza', 'pi.za')
      assert Regex.match?('pizza', 'p.*a')
      assert Regex.match?('pizza', 'p.*')
      assert Regex.match?('pizza', 'piY*zza')
    end

    it 'returns false when the input does not match the the regex' do
      refute Regex.match?('raymond', 'ra.')
      refute Regex.match?('chats', '.*at')
    end
  end
end
