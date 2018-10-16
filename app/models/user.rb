class User<ApplicationRecord
  validates_presence_of :name
  has_many :reviews
  has_many :books, through: :reviews


  def self.top_users
    select('users.*, count(reviews) AS number_reviews')
    .joins(:reviews)
    .group(:id,:user_id)
    .order("number_reviews DESC").take(3)
  end

  # def chronological_order_reviews(sort)
  #   if sort == "newest"
  #     reviews.order(id: :desc)
  #   elsif sort =="oldest"
  #     reviews.order(id: :asc)
  #   end
  # end


end
