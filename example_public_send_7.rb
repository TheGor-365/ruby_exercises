class BookService
  def initialize(params)
    @params = params
  end

  def call
    # public_send("filter_by_#{params[:filter]}")
    send("filter_by_#{params[:filter]}")
  end

  private
  attr_reader :params

  def filter_by_author
    pp 'filter by author'
  end

  def filter_by_editorial
    pp 'filter by editorial'
  end
end


books = BookService.new({filter: 'author'}).call
books
