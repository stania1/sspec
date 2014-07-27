require 'test/unit'
require_relative '../src/spec'
require 'pry'

class TestLet < Test::Unit::TestCase
  def test_that_let_can_be_accessed_from_it
    describe 'something' do
      let(:number) { 2 }

      it 'has access to let-var' do
        number.should == 2
      end
    end
  end

  def test_that_let_can_be_accessed_from_it_2
    describe 'something' do
      let(:number) { 3 }

      it 'has access to let-var' do
        number.should == 3
      end
    end
  end

  # def test_that_let_can_take_result_of_block
end
