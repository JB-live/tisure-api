class ChapterProgressSerializer < ActiveModel::Serializer
  attributes :progress_count, :updated_at
  has_one :last_accessed_question

  def progress_count
    object.user.records.joins(:question).where('questions.chapter_id' => object.chapter_id).distinct.count(:question_id)
  end
end
