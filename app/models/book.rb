class Book <ApplicationRecord
validates_presence_of :title, :pages, :year
has_many :book_authors
has_many :reviews
has_many :authors, through: :book_authors
has_many :users, through: :reviews

def self.sorted_by(direction,sort)
  sorted_books = select('books.*, avg(score) AS average_score').joins(:reviews).group(:id, :book_id)
  if direction && sort
    sorted_books = sorted_books.order("#{sort} #{direction}")
  end
  sorted_books
end

def highest_rated
  reviews.order(score: :DESC).take(3)
end

def lowest_rated
  reviews.order(score: :ASC).take(3)
end

end
