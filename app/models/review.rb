class Review < ApplicationRecord
  validates_presence_of :title, :description, :score
  belongs_to :book
  belongs_to :user

  def self.average_review
    if count(:score) >0
      average_score = average(:score)
    else
      average_score = 0
    end
  end

  def self.chronological_order_reviews(sort = "newest")
    if sort == "newest" || sort == nil
      order(id: :desc)
    elsif sort =="oldest"
      order(id: :asc)
    end
  end

end
