module Zipper
  class << self
    attr_accessor :extention, :processing

    def config
      yield self
    end
  end
end
