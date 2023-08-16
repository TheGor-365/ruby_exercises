require 'forwardable'

class RecordCollection
  extend Forwardable
  attr_accessor :records

  def_delegators :@records, :size, :<<, :map
end


record = RecordCollection.new

pp record.records = [ 1, 2, 3 ]
pp record.size
pp record << 4
pp record.map { |element| element * 2 }
