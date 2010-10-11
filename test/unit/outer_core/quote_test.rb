require File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'test_helper.rb'))

class QuoteTest < Test::Unit::TestCase
  
  test "quote list" do
    env = Flea.run([
      [:set!, :test, [:quote, [2, 2, 2]]]
    ])
    assert_equal([2,2,2], env[:test])
  end
  
  test "quote single value" do
    env = Flea.run([
      [:set!, :test, [:quote, 1]]
    ])
    assert_equal(1, env[:test])
  end
  
end