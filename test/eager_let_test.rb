require 'test/unit'
require_relative '../src/spec'
require 'pry'

class TestEagerLet < Test::Unit::TestCase
  def setup
    Helper.reset
  end

  def test_that_let_can_be_accessed_from_it
    describe 'something' do
      let!(:number) { Helper.number }

      it 'has access to let-var' do
        number.should == 0
        number.should == 0
      end
    end
  end

end

class Helper

  def self.reset
    @@number = 0
  end

  def self.number
    old_number = @@number
    @@number += 1

    old_number
  end

end
