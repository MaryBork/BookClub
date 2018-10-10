class Review<ApplicationRecord
  validates_presence_of :title, :description, :score
  belongs_to :book
  belongs_to :user

  def self.average_review
    average(:score)
  end

end
