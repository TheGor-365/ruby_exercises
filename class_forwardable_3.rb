require 'forwardable'

class MyQueue
  extend Forwardable
  CONST = 1

  attr_reader :queue

  def initialize
    @queue = []
  end

  def_delegator :@queue, :push, :my_push
  def_delegator 'MyQueue::CONST', :to_i
end


new_queue = MyQueue.new

pp new_queue.my_push(42)
pp new_queue.queue
pp new_queue.to_i
