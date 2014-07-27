require 'test/unit'
require_relative '../lib/spec'
require 'pry'

class TestLet < Test::Unit::TestCase

  def test_that_let_can_be_accessed_from_it
    describe 'something' do
      let(:number) { 2 }
      let(:another_number) { 3 }

      it 'has access to things defined in let' do
        number.should == 2
        another_number.should == 3
      end
    end
  end

end
