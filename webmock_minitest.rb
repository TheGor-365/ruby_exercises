require "minitest/autorun"
require "webmock/minitest"

class Book
  attr_accessor :title

  def initialize(title)
    @title = title
  end
end


class IpgeobaseTest < Minitest::Test
  def test_uri
    book = Book.new('War and Peace')

    book.stub(:title, 'War and Peace') do
      assert_equal 'War and Peace', book.title
    end
  end
end
