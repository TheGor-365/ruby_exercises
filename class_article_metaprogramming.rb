require_relative './class_article_model_metaprogramming'

class Article
  include Model

  upcase :title
  upcase :author
  # upcase :chapter
end

article = Article.new(
  title:    'article',
  author:   'John',
  chapter:  'first'
)

pp article
puts
pp article.attributes
pp article.title
pp article.instance_variables
puts
puts

pp article.title = 'article_2'
pp article.attributes
pp article.attributes.to_a
puts

pp article
puts
puts

article.attributes.each_pair do |attribute|
  pp attribute.first
end
puts

article.attributes.each_pair do |attribute|
  pp attribute.last
end
puts

article.attributes.each_pair do |attribute|
  pp attribute
end
puts

article.attributes.to_h.each_pair do |name, value|
  pp name
end
puts

pp article.attributes[:chapter]
pp article.attributes[:author]
pp article.attributes[:title]
puts
