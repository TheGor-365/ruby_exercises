class ApplicationError
  def display_error
    pp 'error'
  end
end

class SuperBadError < ApplicationError
end


error = SuperBadError.new
error.display_error
