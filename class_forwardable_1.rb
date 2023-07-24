require 'forwardable'

class RecordCollection
  attr_accessor :records
  extend Forwardable

  def_delegator :@records, :[], :record_number
end

collection = RecordCollection.new

pp collection.records = [ 4, 5, 6 ]
pp collection.record_number(0)
