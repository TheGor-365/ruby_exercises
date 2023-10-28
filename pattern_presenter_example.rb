class ArticleDecorator < Draper::Decorator
  deleagate_all

  def publication_status
    published? ? "Published at #{published_at}" : 'Unpublished'
  end

  def published_at
    object.published_at.strftime('%A, %B, %e')
  end
end
