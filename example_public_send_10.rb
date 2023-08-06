pp 3 + 4
pp 3.send :+, 4

puts

class Book
  def show_cover?
    self.viewable_by == 'media'
  end

  def book_html
    if show_cover?
    else
      public_send(self.viewable_by)
    end
  end
end


book = Book.new.show_cover?

pp book
# pp book.book_html
# pp book.show_cover
