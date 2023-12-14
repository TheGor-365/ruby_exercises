module Zipper
    attr_accessor :extention, :processing

  def self.config
    yield self
  end
end
