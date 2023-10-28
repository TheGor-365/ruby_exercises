class ApplicationError
  def display_error
    puts 'Error! Error!'
  end
end

class SuperBadError < ApplicationError
end

error = SuperBadError.new
error.display_error
