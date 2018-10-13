class User<ApplicationRecord
  validates_presence_of :name
  has_many :reviews
  has_many :books, through: :reviews

  def self.chronological_order_reviews(sort,direction)
    if sort == "newest"
      reviews.order(created_at: :desc)
    elsif sort =="oldest"
      reviews.order(created_at: :asc)
    end
  end



end
