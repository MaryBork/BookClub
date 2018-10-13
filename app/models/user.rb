class User<ApplicationRecord
  validates_presence_of :name
  has_many :reviews
  has_many :books, through: :reviews

  def self.chronological_order_reviews(sort, direction)
    reviews.order(time: :asc)
  end


end
