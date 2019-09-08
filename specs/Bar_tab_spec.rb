require('minitest/autorun')
require('minitest/rg')
require_relative('../Bar_tab.rb')
require('pry')

class BarTabTest < MiniTest::Test

  def setup
    @bar_tab = BarTab.new("Entry Fee", 10)

  end

  def test_description
    assert_equal("Entry Fee", @bar_tab.description())
  end

  def test_charge
    assert_equal(10, @bar_tab.charge())
  end

end
