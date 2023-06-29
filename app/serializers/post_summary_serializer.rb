class PostSummarySerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags

  def short_content
    # "#{self.object.title}"
    "#{self.object.content[0..39]}..."
  end
end