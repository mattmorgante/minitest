require_relative 'count_frequency'
require 'minitest/autorun'

class TestCountFrequency < Minitest::Test 
  def test_empty_list 
    assert_equal({}, count_frequency([]))
  end 

  def test_single_word 
    assert_equal({"cat" => 1}, count_frequency(["cat"]))
  end 

  def test_repeating_words
    assert_equal({ "cat" => 1, "sat" => 2}, count_frequency(["cat", "sat", "sat"]))
  end 
end 