require_relative './class_article_model_metaprogramming'

class Article
  include Model

  upcase :title
  upcase :author
  # upcase :chapter
end

pp article = Article.new(title: 'article', author: 'John', chapter: 'first')
puts
p article.attributes #=> {:title=>"ARTICLE", :author=>"JOHN", :chapter=>'first'}
puts
p article.title
puts
p article.instance_variables
puts
puts
puts
puts
p article.title = 'article_2'
p article.attributes
puts
pp article
