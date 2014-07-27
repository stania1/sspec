require 'test/unit'
require_relative '../src/spec'

class TestDescribe < Test::Unit::TestCase
  def test_that_it_can_pass
    describe 'something' do
    end
  end

end
