class ArticleDecorator < Draper::Decorator
  deleagate_all

  def publication_status
    if published?
      "Published at #{published_at}"
    else
      "Unpublished"
    end
  end

  def published_at
    object.published_at.strftime("%A, %B, %e")
  end
end
