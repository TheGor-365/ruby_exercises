class BookService
  attr_reader :params

  def initialize params
    @params = params
  end

  def service
    public_send("filter_by_#{params[:filter]}")
  end

  def filter_by_author
    pp 'filter by author'
  end

  def filter_by_editorial
    pp 'filter by editorial'
  end
end



first_param = { filter: 'author' }

first = BookService.new first_param
first.service; puts



second_param = { filter: 'editorial' }

second = BookService.new second_param
second.service; puts



third_param = { filter: 'something' }

third = BookService.new third_param
third.service
