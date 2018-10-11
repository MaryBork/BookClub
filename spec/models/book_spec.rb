require 'rails_helper'

describe Book, type: :model do
  describe 'Validations' do
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:pages)}
    it {should validate_presence_of(:year)}
  end
  describe 'Relationships' do
    it {should have_many(:book_authors)}
    it {should have_many(:reviews)}
    it {should have_many(:authors).through(:book_authors)}
    it {should have_many(:users).through(:reviews)}
  end

  describe 'Methods' do
    describe 'highest_rated' do
      it 'returns the three highest rated reviews' do
        book_1 = Book.create(title: "The Iliad",  pages:260 , year:1975 , image_url: "https://images-na.ssl-images-amazon.com/images/I/419x%2BHUZRrL.jpg ")
        book_2 = Book.create(title: "The Odyssey", pages:269 , year:1962 , image_url: "https://images-na.ssl-images-amazon.com/images/I/41t%2BKlNI4%2BL._SX332_BO1,204,203,200_.jpg ")
        book_3 = Book.create(title: "Aeschylus I: Oresteia: Agamemnon, The Libation Bearers, The Eumenides(The Complete Greek Tragedies)(Vol 1)", pages:170 , year:1969 , image_url: "https://images-na.ssl-images-amazon.com/images/I/514B7BcZuKL._SX320_BO1,204,203,200_.jpg ")
        book_4 = Book.create(title: "Aeschylus II: The Suppliant Maidens and The Persians, Seven against Thebes and Prometheus Bound (The Complete Greek Tragedies)",  pages:188 , year:1992 ,image_url: "https://images-na.ssl-images-amazon.com/images/I/51JdGmN746L._SX326_BO1,204,203,200_.jpg ")

        book_array =[book_1, book_2, book_3, book_4]

        user_1 = User.create(name: "John Smith")
        user_2 = User.create(name: "Jennifer Doe")
        user_3 = User.create(name: "Calvin McCarthy")
        user_4 = User.create(name: "Edward Edwards")
        user_5 = User.create(name: "Thomas Harris")
        user_6 = User.create(name: "Ruth Brand")
        user_7 = User.create(name: "Melvin Cedeno")
        user_8 = User.create(name: "Averi Johnson")
        user_9 = User.create(name: "Isaac Falkenstine")
        user_10 = User.create(name: "Ian Douglas")
        user_11 = User.create(name: "Dione Wilson")

        review_1 = Review.create(title: "It's a classic for a reason - but it's also long and repetitive", description:"Years ago I read excerpts from The Odyssey in school - experiencing the full epic gives more color, but it can also drag. It’s not so much that the pace is slow (though the ending is overlong) - it’s more that you will re-read the same inconsequential details, phrased the same way, over and over.", score: 3, book: book_2, user: user_1)
        review_2 = Review.create(title: "I don't think 'complicated' is the best way to treat 'polytropos.'", description:"Well read by narrator David McCallion, hence the 5 stars. However: I am already interested in the book, and have read most of it before.", score: 5, book:book_1 , user:user_2)
        review_3 = Review.create(title: "The Odyssey Review", description:"my 10 year-old grandson loved it. good mix of graphics and well written story.", score: 5 , book: book_1, user:user_3)

        review_4 = Review.create(title: "Grew hair on my chest", description:"I believe that this book has made me a better man, which is remarkable because, well....I’m a chick.", score: 4, book: book_3  , user: user_4)
        review_5 = Review.create(title: "Four Stars", description:"Great book, should have read it sooner in life. Understand history, understand today.", score: 3, book: book_2 , user:user_5)
        review_6 = Review.create(title: "1 Stars", description:"awesome", score: 3, book: book_4 , user:user_5)

        expect(book_array[0].highest_rated).to include(review_3)
        expect(book_array[1].highest_rated).to include(review_5)
        expect(book_array[2].highest_rated).to include(review_4)
      end
    end
  end

end
