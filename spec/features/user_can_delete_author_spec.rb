require 'rails_helper'

RSpec.describe "Authors" do
  describe "When I visit /authors/:id" do

    it "Has a link that allows you to delete an author" do
      book_1 = Book.create(title: "The Iliad",  pages:260 , year:1975 , image_url: "https://images-na.ssl-images-amazon.com/images/I/419x%2BHUZRrL.jpg ")
      author_1 = Author.create(name: "Homer")



      visit author_path(author_1)
      click_on "Delete"


      expect(current_path).to eq (root_path)
      expect(page).to_not have_content(author_1.name)
    end
  end
end
