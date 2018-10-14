class Review < ApplicationRecord
  validates_presence_of :title, :description, :score
  belongs_to :book
  belongs_to :user

  def self.average_review
    average(:score)
  end

  def self.chronological_order_reviews(sort)
    if sort == "newest"
      order(id: :desc)
    elsif sort =="oldest"
      order(id: :asc)
    end
  end

end
