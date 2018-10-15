require 'rails_helper'

RSpec.describe 'Book Show Page' do
  describe 'in the Book section' do
    before(:each) do
      @book_1 = Book.create(title: "The Iliad",  pages:260 , year:1975 , image_url: "https://images-na.ssl-images-amazon.com/images/I/419x%2BHUZRrL.jpg ")

      user_1 = User.create(name: "John Smith")
      user_2 = User.create(name: "Jennifer Doe")
      user_3 = User.create(name: "Calvin McCarthy")
      user_4 = User.create(name: "Edward Edwards")
      user_5 = User.create(name: "Thomas Harris")
      user_6 = User.create(name: "Ruth Brand")
      user_7 = User.create(name: "Melvin Cedeno")
      user_8 = User.create(name: "Averi Johnson")
      user_9 = User.create(name: "Isaac Falkenstine")

      author_1 = Author.create(name: "Homer")

      book_author_1 = BookAuthor.create(author:author_1, book:@book_1)


      @review_1 = Review.create(title: "It's a classic for a reason - but it's also long and repetitive", description:"Years ago I read excerpts from The Odyssey in school - experiencing the full epic gives more color, but it can also drag. It’s not so much that the pace is slow (though the ending is overlong) - it’s more that you will re-read the same inconsequential details, phrased the same way, over and over.", score: 1, book: @book_1, user: user_1)
      @review_2 = Review.create(title: "I don't think 'complicated' is the best way to treat 'polytropos.'", description:"Well read by narrator David McCallion, hence the 5 stars. However: I am already interested in the book, and have read most of it before.", score: 2, book:@book_1 , user:user_2)
      @review_3 = Review.create(title: "The Odyssey Review", description:"my 10 year-old grandson loved it. good mix of graphics and well written story.", score: 2 , book: @book_1, user:user_3)

      @review_4 = Review.create(title: "Grew hair on my chest", description:"I believe that this book has made me a better man, which is remarkable because, well....I’m a chick.", score: 3, book: @book_1  , user: user_4)
      @review_5 = Review.create(title: "Four Stars", description:"Great book, should have read it sooner in life. Understand history, understand today.", score: 3, book: @book_1 , user:user_5)

      @review_6 = Review.create(title: "Poor Translation", description:"As very good as this translation is, this edition doesn’t do it justice with regard to its formatting.", score:3 , book: @book_1 , user: user_6)
      @review_7 = Review.create(title: "AMAZING!! 5 STARS!", description:"Truly 5-star great work of literature, and I certainly agree with all the other @reviewers who extol its virtues!", score:4 , book: @book_1 , user: user_7)

      @review_8 = Review.create(title: "Five Stars!", description:"This book is amazing. The story underlying it is amazing, and the writing is superb - clear, flowing, and with appropriate detail and connections drawn.", score: 4, book: @book_1 , user:user_8)
      @review_9 = Review.create(title: "This needs to be a screenplay", description:"I wish someone would make a movie with the same sensibility, it would be an instant classic. I also wish this book would come out on Kindle so one could search and highlight it. There are a lot of classic elements to this story, in every sense of the word.", score: 5, book: @book_1 , user: user_9 )

    end


    it 'shows book attributes' do

      visit "/books/#{@book_1.id}"


        expect(page).to have_content(@book_1.title)
        expect(page).to have_content(@book_1.authors.first.name)
        expect(page).to have_content(@book_1.pages)
        expect(page).to have_content(@book_1.reviews[0].title)
    end

    it 'shows top three reviews' do
      visit "/books/#{@book_1.id}"

      within('#top_3_reviews') do
        expect(page).to have_content(@review_7.title)
        expect(page).to have_content(@review_7.user.name)
        expect(page).to have_content(@review_8.title)
        expect(page).to have_content(@review_8.user.name)
        expect(page).to have_content(@review_9.title)
        expect(page).to have_content(@review_9.user.name)
        expect(page).to_not have_content(@review_1.title)
        expect(page).to_not have_content(@review_1.user.name)
        expect(page).to_not have_content(@review_2.title)
        expect(page).to_not have_content(@review_2.user.name)
        expect(page).to_not have_content(@review_3.title)
        expect(page).to_not have_content(@review_3.user.name)
      end
    end

    it 'shows worst three reviews' do
      visit "/books/#{@book_1.id}"

      within('#worst_3_reviews') do
        expect(page).to_not have_content(@review_7.title)
        expect(page).to_not have_content(@review_7.user.name)
        expect(page).to_not have_content(@review_8.title)
        expect(page).to_not have_content(@review_8.user.name)
        expect(page).to_not have_content(@review_9.title)
        expect(page).to_not have_content(@review_9.user.name)
        expect(page).to have_content(@review_1.title)
        expect(page).to have_content(@review_1.user.name)
        expect(page).to have_content(@review_2.title)
        expect(page).to have_content(@review_2.user.name)
        expect(page).to have_content(@review_3.title)
        expect(page).to have_content(@review_3.user.name)
      end
    end

    it 'shows worst three reviews' do
      visit "/books/#{@book_1.id}"

      within('#overall_average_rating') do
        expect(page).to have_content("Average Book Rating: 3.0")
      end
    end
  end
end
