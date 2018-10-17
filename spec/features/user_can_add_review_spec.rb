require 'rails_helper'

describe 'Reviews' do
 describe 'When I visit new review path' do
  it 'Has a Form that enables me to create a new review' do
   book_1 = Book.create(title: "The Iliad", pages:260 , year:1975 , image_url: "https://images-na.ssl-images-amazon.com/images/I/419x%2BHUZRrL.jpg")
   visit new_book_review_path(book_1)

   fill_in 'review[user]', with: "Calvin"
   fill_in 'review[title]', with:"It's a classic for a reason - but it's also long and repetitive"
   fill_in 'review[score]', with: 3
   fill_in 'review[description]', with: "Years ago I read excerpts from The Odyssey in school - experiencing the full epic gives more color, but it can also drag. It’s not so much that the pace is slow (though the ending is overlong) - it’s more that you will re-read the same inconsequential details, phrased the same way, over and over."
   click_on "Create Review"

   expect(current_path).to eq(book_path(book_1))
   expect(page).to have_content(book_1.title)
  end
 end
end
