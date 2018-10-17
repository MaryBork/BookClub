class Book <ApplicationRecord
validates_presence_of :title, :pages, :year
has_many :book_authors
has_many :reviews
has_many :authors, through: :book_authors, dependent: :destroy
has_many :users, through: :reviews, dependent: :destroy

def self.sorted_by(direction,sort)
  if direction && sort
    sorted_books = select('books.*, avg(score) AS average_score').joins(:reviews).group(:book_id,:id)
    if sort == "average_score"
      sorted_books = sorted_books.order("#{sort} #{direction}")
    elsif sort == "pages"
      sorted_books = sorted_books.order("#{sort} #{direction}")
    elsif sort == "reviews"
      sorted_books = sorted_books.order("reviews.count #{direction}")
    end
  else
    sorted_books = Book.all
  end
  sorted_books
end

def highest_rated
  reviews.order(score: :DESC).limit(3)
end

def lowest_rated
  reviews.order(score: :ASC).limit(3)
end

def self.delete_books(book_ids)
  destroy(book_ids)
end


end
