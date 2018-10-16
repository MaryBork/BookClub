require 'rails_helper'

RSpec.describe 'Reviews' do
 describe 'When I visit new review path' do
  it 'Has a Form that enables me to create a new review' do
​
   book_1 = Book.create(title: "The Iliad", pages:260 , year:1975 , image_url: "https://images-na.ssl-images-amazon.com/images/I/419x%2BHUZRrL.jpg")
   author_1 = Author.create(name: "Homer")
   book_author_1 = BookAuthor.create(author:author_1, book:book_1)
   review_1 = Review.create(title: "It's a classic for a reason - but it's also long and repetitive", description:"Years ago I read excerpts from The Odyssey in school - experiencing the full epic gives more color, but it can also drag. It’s not so much that the pace is slow (though the ending is overlong) - it’s more that you will re-read the same inconsequential details, phrased the same way, over and over.", score: 3, book: book_1, user: user_1)
   user_1 = User.create(name: "John Smith")
​
   visit new_review_path
   fill_in :title, with: ("It's a classic for a reason - but it's also long and repetitive")
   fill_in :score, with: (3)
   fill_in :description, with: ("Years ago I read excerpts from The Odyssey in school - experiencing the full epic gives more color, but it can also drag. It’s not so much that the pace is slow (though the ending is overlong) - it’s more that you will re-read the same inconsequential details, phrased the same way, over and over.")
   click_on "Submit"
   expect(current_path).to eq(book_show_path)
   expect (page).to have(book_1.title)
  end
 end
end