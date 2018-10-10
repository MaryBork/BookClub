require 'rails_helper'

describe Review, type: :model do
  describe 'Validations' do
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:description)}
    it {should validate_presence_of(:score)}
  end
  describe 'Relationships' do
    it {should belong_to(:book)}
    it {should belong_to(:user)}
  end

  describe 'Methods' do
    describe 'When a user visits /books' do
      it 'Shows calculated average reviews' do


        book_2 = Book.create(title: "The Odyssey", pages:269 , year:1962 , image_url: "https://images-na.ssl-images-amazon.com/images/I/41t%2BKlNI4%2BL._SX332_BO1,204,203,200_.jpg ")
        author_1 = Author.create(name: "Homer")
        book_author_1 = BookAuthor.create(author: author_1,  book: book_2)
        user_1 = User.create(name: "John Smith")
        user_2 = User.create(name: "Jennifer Doe")
        user_3 = User.create(name: "Calvin McCarthy")
        user_4 = User.create(name: "Edward Edwards")
        user_5 = User.create(name: "Thomas Harris")
        review_1 = Review.create(title: "It's a classic for a reason - but it's also long and repetitive", description:"Years ago I read excerpts from The Odyssey in school - experiencing the full epic gives more color, but it can also drag. It’s not so much that the pace is slow (though the ending is overlong) - it’s more that you will re-read the same inconsequential details, phrased the same way, over and over.", score: 3, book: book_2, user:user_5)
        review_2 = Review.create(title: "I don't think 'complicated' is the best way to treat 'polytropos.'", description:"Well read by narrator David McCallion, hence the 5 stars. However: I am already interested in the book, and have read most of it before.", score: 5, book:book_2, user: user_4 )
        review_3 = Review.create(title: "The Odyssey Review", description:"my 10 year-old grandson loved it. good mix of graphics and well written story.", score: 4 , book: book_2, user:user_3)
        review_4 = Review.create(title: "Grew hair on my chest", description:"I believe that this book has made me a better man, which is remarkable because, well....I’m a chick.", score: 5, book: book_2, user:user_2 )
        review_5 = Review.create(title: "Four Stars", description:"Great book, should have read it sooner in life. Understand history, understand today.", score: 4, book: book_2, user: user_1)
        

        expect(Review.average_review).to eq(4.2)
      end
    end
  end

end
