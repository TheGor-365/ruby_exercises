require_relative './class_metapro_model.rb'
require 'date'

class Post
  include Model

  attribute :id,         type: :integer
  attribute :title,      type: :string
  attribute :body,       type: :string
  attribute :created_at, type: :datetime
  attribute :published,  type: :boolean
end



post = Post.new(
  id:         '1',
  title:      'First Post',
  body:       'Hello, World!',
  created_at: '01/03/2021',
  published:  'true'
)

pp post.id
pp post.title
pp post.body
pp post.created_at
pp post.published; puts

pp post; puts




pp post.id         = '2'
pp post.title      = 'Second Post'
pp post.body       = 'Goodbye, World!'
pp post.created_at = '10/05/2020'
pp post.published  = 'false'; puts
pp post.attributes; puts



post_2 = Post.new(id: '2')

pp post_2.id = '3'
pp post_2; puts



post_3 = Post.new do |p|
  puts p
end

pp post_3
