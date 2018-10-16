require 'rails_helper'

RSpec.describe 'Users Pages' do
  describe 'User Index Page'
    before(:each) do
      @user_1 = User.create(name: "John Smith")
      @user_2 = User.create(name: "Jennifer Doe")
      @user_3 = User.create(name: "Calvin McCarthy")
    end

    it 'shows all the users in a list' do

      visit "/users"

      expect(page).to have_content(@user_1.name)
      expect(page).to have_content(@user_1.name)
    end
  end

  describe 'User Show Page' do
    before(:each) do
      @user_1 = User.create(name: "John Smith")
      @user_2 = User.create(name: "Meg Stang")


      @book_1 = Book.create(title: "The Iliad",  pages:260 , year:1975 , image_url: "https://images-na.ssl-images-amazon.com/images/I/419x%2BHUZRrL.jpg ")
      @book_2 = Book.create(title: "The Odyssey", pages:269 , year:1962 , image_url: "https://images-na.ssl-images-amazon.com/images/I/41t%2BKlNI4%2BL._SX332_BO1,204,203,200_.jpg ")
      @book_3 = Book.create(title: "Aeschylus I: Oresteia: Agamemnon, The Libation Bearers, The Eumenides(The Complete Greek Tragedies)(Vol 1)", pages:170 , year:1969 , image_url: "https://images-na.ssl-images-amazon.com/images/I/514B7BcZuKL._SX320_BO1,204,203,200_.jpg ")
      @book_4 = Book.create(title: "Aeschylus II: The Suppliant Maidens and The Persians, Seven against Thebes and Prometheus Bound (The Complete Greek Tragedies)",  pages:188 , year:1992 ,image_url: "https://images-na.ssl-images-amazon.com/images/I/51JdGmN746L._SX326_BO1,204,203,200_.jpg ")

      @review_1 = Review.create(title: "It's a classic for a reason - but it's also long and repetitive", description:"Years ago I read excerpts from The Odyssey in school - experiencing the full epic gives more color, but it can also drag. It’s not so much that the pace is slow (though the ending is overlong) - it’s more that you will re-read the same inconsequential details, phrased the same way, over and over.", score: 3, book: @book_1, user: @user_1, created_at: Time.parse('1616-04-23') )
      @review_2 = Review.create(title: "I don't think 'complicated' is the best way to treat 'polytropos.'", description:"Well read by narrator David McCallion, hence the 5 stars. However: I am already interested in the book, and have read most of it before.", score: 5, book:@book_2 , user:@user_1,created_at: Time.parse('2016-04-23'))
      @review_3 = Review.create(title: "The Odyssey Review", description:"my 10 year-old grandson loved it. good mix of graphics and well written story.", score: 4 , book: @book_3, user:@user_1, created_at: Time.parse('2000-04-23'))

      @review_4 = Review.create(title: "Grew hair on my chest", description:"I believe that this book has made me a better man, which is remarkable because, well....I’m a chick.", score: 5, book: @book_4  , user: @user_2, created_at: Time.parse('2001-04-23'))

    end
    it 'shows title,rating,and text of all reviews' do
      visit "/users/#{@user_1.id}"

      expect(page).to have_content(@review_1.title)
      expect(page).to have_content(@review_1.score)
      expect(page).to have_content(@review_1.description)
      expect(page).to have_content(@review_2.title)
      expect(page).to have_content(@review_2.score)
      expect(page).to have_content(@review_2.description)
      expect(page).to have_content(@review_3.title)
      expect(page).to have_content(@review_3.score)
      expect(page).to have_content(@review_3.description)
      expect(page).to_not have_content(@review_4.title)
      expect(page).to_not have_content(@review_4.description)

    end

    it 'shows reviews in chronological new to old order' do

      visit "/users/#{@user_1.id}?sort=newest"
      save_and_open_page

      expect(page).to have_content(@review_2.title)
    end

    it 'shows reviews in old to new chronological order' do

      visit "/users/#{@user_1.id}?sort=oldest"
      save_and_open_page
      expect(page).to have_content(@review_1.title)
    end
end
