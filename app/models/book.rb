class Book <ApplicationRecord
validates_presence_of :title, :pages, :year
has_many :book_authors
has_many :reviews
has_many :authors, through: :book_authors
has_many :users, through: :reviews

def self.sorted_by(direction,sort)
  sorted_books = select('books.*, avg(score) AS average_score').joins(:reviews).group(:book_id,:id)
  if direction && sort
    if sort == "average_score"
      sorted_books = sorted_books.order("#{sort} #{direction}")
    elsif sort == "pages"
      sorted_books = sorted_books.order("#{sort} #{direction}")
    elsif sort == "reviews"
      sorted_books = sorted_books.order("reviews.count #{direction}")
    end
  end
  sorted_books
end

def highest_rated
  reviews.order(score: :DESC).limit(3)
end

def lowest_rated
  reviews.order(score: :ASC).limit(3)
end

end
