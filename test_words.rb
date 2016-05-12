require_relative 'words_from_string'
require 'minitest/autorun'

class TestWordsFromString < Minitest::Test 
  def test_empty_string 
    assert_equal([], words_from_string(""))
    assert_equal([], words_from_string("    "))
  end

  def test_single_word
    assert_equal(["cat"], words_from_string("cat"))
    assert_equal(["cat"], words_from_string("  cat  "))
  end 

  def test_many_words
    assert_equal(["the", "cat", "sat"], words_from_string("the cat sat"))
  end 

  def test_ignores_punctuation
    assert_equal(["the", "cat", "sat's"], words_from_string("the! <cat> sat's"))
  end 


end 