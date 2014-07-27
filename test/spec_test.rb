require 'test/unit'
require_relative '../src/spec'
require 'pry'

class TestDescribe < Test::Unit::TestCase
  def test_that_it_can_pass
    describe 'something' do
      it 'has some property' do
      end
    end
  end

  def test_that_it_can_fail
    assert_raise(IndexError) do
      describe 'some failing thing' do
        it 'fails' do
          raise IndexError
        end
      end
    end
  end
end

class TestAssertion < Test::Unit::TestCase
  def test_that_it_can_pass
    2.should == 2
  end

  def test_that_it_can_fail
    assert_raise(AssertionError) do
      1.should == 2
    end
  end
end

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
