require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'
require 'pry'

class TranslatorTest < MiniTest::Test

  def test_it_exists
    translator = Translate.new

    assert_instance_of Translate, translator
  end

  def test_it_translates_english_to_morse_code
    hello_world = Translate.new
    morse = hello_world.eng_to_morse("hello world")

    assert_equal_to "......-...-..--- .-----.-..-..-..", morse
  end
end
