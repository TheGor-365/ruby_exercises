require_relative './class_metapro_model.rb'
require 'date'

class Post
  include Model

  attribute :id, type: :integer
  attribute :title, type: :string
  attribute :body, type: :string
  attribute :created_at, type: :datetime
  attribute :published, type: :boolean
end

pp post = Post.new(
  id:         '1',
  title:      'First Post',
  body:       'Hello, World!',
  created_at: '01/03/2021',
  published:  'true'
)
puts

pp post.id         # => 1
pp post.title      # => 'Hello, World!'
pp post.body       # => 'First Post'
pp post.created_at # => #<DateTime: 1983-11-18T00:00:00+00:00 (4891313/2,0/1,2299161)>
pp post.published  # => true
puts

pp post
puts

pp post.id = '2'
pp post.title = 'Second Post'
pp post.body = 'Goodbye, World!'
pp post.created_at = '10/05/2020'
pp post.published = 'false'
puts

pp post.attributes
puts

pp post_2 = Post.new(id: '2')
pp post_2.id = '3'
pp post_2
puts
