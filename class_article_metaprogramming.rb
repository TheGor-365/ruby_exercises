class Article
  def self.upcase(attribute_name)
    @upcased ||= []
    @upcased << attribute_name
  end

  def self.upcased
    @upcased
  end

  upcase :title
  upcase :author

  def initialize(params)
    @attributes = {}
    params.each do |name, value|
      value.upcase! if self.class.upcased.include?(name)
      @attributes[name] = value
    end
  end

  attr_reader :attributes
end

p article = Article.new(title: 'article', author: 'John', chapter: 'first')

p article.attributes #=> {:title=>"ARTICLE", :author=>"JOHN", :chapter=>'first'}
