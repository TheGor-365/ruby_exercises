require_relative './class_article_model_metaprogramming'

class Article
  include Model

  upcase :title
  upcase :author
end

p article = Article.new(title: 'article', author: 'John', chapter: 'first')
p article.attributes #=> {:title=>"ARTICLE", :author=>"JOHN", :chapter=>'first'}
puts
p article.title
p article.attributes
p Article.upcased
