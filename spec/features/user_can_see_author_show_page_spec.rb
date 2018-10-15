require 'rails_helper'

RSpec.describe 'Author Show Page' do
  before(:each) do
    @book_1 = Book.create(title: "The Iliad",  pages:260 , year:1975 , image_url: "https://images-na.ssl-images-amazon.com/images/I/419x%2BHUZRrL.jpg ")
    @book_2 = Book.create(title: "The Odyssey", pages:269 , year:1962 , image_url: "https://images-na.ssl-images-amazon.com/images/I/41t%2BKlNI4%2BL._SX332_BO1,204,203,200_.jpg ")
    @book_3 = Book.create(title: "Aeschylus I: Oresteia: Agamemnon, The Libation Bearers, The Eumenides(The Complete Greek Tragedies)(Vol 1)", pages:170 , year:1969 , image_url: "https://images-na.ssl-images-amazon.com/images/I/514B7BcZuKL._SX320_BO1,204,203,200_.jpg ")

    @user_1 = User.create(name: "John Smith")
    @user_2 = User.create(name: "Jennifer Doe")
    @user_3 = User.create(name: "Calvin McCarthy")

    @author_1 = Author.create(name: "Homer")

    book_author_1 = BookAuthor.create(author:@author_1, book:@book_1)
    book_author_2 = BookAuthor.create(author:@author_1, book:@book_2)


    @review_1 = Review.create(title: "It's a classic for a reason - but it's also long and repetitive", description:"Years ago I read excerpts from The Odyssey in school - experiencing the full epic gives more color, but it can also drag. It’s not so much that the pace is slow (though the ending is overlong) - it’s more that you will re-read the same inconsequential details, phrased the same way, over and over.", score: 3, book: @book_1, user: @user_1)
    @review_2 = Review.create(title: "I don't think 'complicated' is the best way to treat 'polytropos.'", description:"Well read by narrator David McCallion, hence the 5 stars. However: I am already interested in the book, and have read most of it before.", score: 2, book:@book_2 , user:@user_2)
    @review_3 = Review.create(title: "The Odyssey Review", description:"my 10 year-old grandson loved it. good mix of graphics and well written story.", score: 4 , book: @book_2, user:@user_3)
  end

  it 'displays all books from the author' do

    visit "/authors/#{@author_1.id}"

    within '#author_attributes' do
    expect(page).to have_content(@book_1.title)
    expect(page).to have_content(@book_1.reviews[0].user.name)
    expect(page).to have_content(@book_2.title)
    expect(page).to have_content(@book_2.reviews[1].user.name)
    end
  end

  it 'can display the list of authors' do
    visit "/authors"

    expect(page).to have_content(@author_1.name)
  end
end
