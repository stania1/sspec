def describe(description, &block)
  ExampleGroup.new(block).evaluate!
end

class ExampleGroup
  def initialize(block)
    @block = block
  end

  def evaluate!
    instance_eval(&@block)
  end

  def it(description, &block)
    block.call
  end

  def let(name, &block)
    ExampleGroup.class_eval do
      define_method(name.to_s) do
        block.call
      end
    end
  end
end

class Object
  def should
    DelayedAssertion.new(self)
  end
end

class DelayedAssertion
  def initialize(subject)
    @subject = subject
  end

  def ==(other)
    raise AssertionError unless @subject == other
  end
end

class AssertionError < Exception

end
