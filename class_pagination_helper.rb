class PaginationHelper
  attr_reader :collection, :size

  def initialize(collection, items_per_page)
    @collection = collection
    @size       = items_per_page
  end

  def item_count
    collection.size
  end

  def page_count
    (item_count / size.to_f).ceil
  end

  def page_item_count(page_index)
    len = collection[size * page_index...size * page_index + size]
    return -1 if len.nil?
    return -1 if page_index > page_count || page_index < 0

    len.size
  end

  def page_index(item_index)
    return -1 if item_index > item_count || item_index < 0

    item_index / size
  end
end


pp helper = PaginationHelper.new(%w[a b c d e f], 4)

pp helper.page_count()
pp helper.item_count() == 6
pp helper.page_item_count(0) == 4
pp helper.page_item_count(1) == 2
pp helper.page_item_count(2) == -1

pp helper.page_index(5) == 1
pp helper.page_index(2) == 0
pp helper.page_index(20) == -1
pp helper.page_index(-10) == -1

# assert(helper.page_count() == 2)
# assert(helper.item_count() == 6)
# assert(helper.page_item_count(0) == 4)
# assert(helper.page_item_count(1) == 2)
# assert(helper.page_item_count(2) == -1)
#
# assert(helper.page_index(5) == 1)
# assert(helper.page_index(2) == 0)
# assert(helper.page_index(20) == -1)
# assert(helper.page_index(-10) == -1)
