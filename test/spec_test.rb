require 'test/unit'
require_relative '../src/spec'

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
