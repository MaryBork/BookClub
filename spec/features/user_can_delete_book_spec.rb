require 'rails_helper'

RSpec.describe "Books" do
  describe "When I visit /books/:id" do

    it "Has a link that allows you to delete a book" do
      book_1 = Book.create(title: "The Iliad",  pages:260 , year:1975 , image_url: "https://images-na.ssl-images-amazon.com/images/I/419x%2BHUZRrL.jpg ")
      user_1 = User.create(name: "John Smith")
      author_1 = Author.create(name: "Homer")


      visit book_path(book_1)
      click_on "Delete"

      expect(current_path).to eq(root_path)
      expect(page).to_not have_content(book_1.title)
    end
  end
end
