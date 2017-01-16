require './stack.rb'

class Queue
  attr_accessor :inbox, :outbox
  def initialize
    @inbox = Stack.new
    @outbox = Stack.new
  end

  def enqueue(val)
    @inbox.push(val)
  end

  def dequeue
    if @outbox.isEmpty
      if @inbox.isEmpty
        return nil
      end

      until @inbox.isEmpty
        @outbox.push(@inbox.pop)
      end
    end
    return @outbox.pop
  end
end
