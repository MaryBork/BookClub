require 'rails_helper'


RSpec.describe "Books" do
  describe "When I visit /books" do
    it "Shows all book titles in database" do

      book_1 = Book.create(title: "The Iliad",  pages:260 , year:1975 , image_url: "https://images-na.ssl-images-amazon.com/images/I/419x%2BHUZRrL.jpg ")
      book_2 = Book.create(title: "The Odyssey", pages:269 , year:1962 , image_url: "https://images-na.ssl-images-amazon.com/images/I/41t%2BKlNI4%2BL._SX332_BO1,204,203,200_.jpg ")
      author_1 = Author.create(name: "Homer")
      author_2 = Author.create(name: "Aeschylus")
      book_author_1 = BookAuthor.create(author: author_1,  book: book_1)
      book_author_2 = BookAuthor.create(author: author_2,  book: book_2)

      visit '/books'

      expect(page).to have_content(book_1.title)
      expect(page).to have_content(book_2.title)
    end

    it "Shows all book pages in database" do

      book_1 = Book.create(title: "The Iliad",  pages:260 , year:1975 , image_url: "https://images-na.ssl-images-amazon.com/images/I/419x%2BHUZRrL.jpg ")
      book_2 = Book.create(title: "The Odyssey", pages:269 , year:1962 , image_url: "https://images-na.ssl-images-amazon.com/images/I/41t%2BKlNI4%2BL._SX332_BO1,204,203,200_.jpg ")
      author_1 = Author.create(name: "Homer")
      author_2 = Author.create(name: "Aeschylus")
      book_author_1 = BookAuthor.create(author: author_1,  book: book_1)
      book_author_2 = BookAuthor.create(author: author_2,  book: book_2)

      visit '/books'

      expect(page).to have_content(book_1.pages)
      expect(page).to have_content(book_2.pages)
    end

    it "Shows all book years published in database" do

      book_1 = Book.create(title: "The Iliad",  pages:260 , year:1975 , image_url: "https://images-na.ssl-images-amazon.com/images/I/419x%2BHUZRrL.jpg ")
      book_2 = Book.create(title: "The Odyssey", pages:269 , year:1962 , image_url: "https://images-na.ssl-images-amazon.com/images/I/41t%2BKlNI4%2BL._SX332_BO1,204,203,200_.jpg ")
      author_1 = Author.create(name: "Homer")
      author_2 = Author.create(name: "Aeschylus")
      book_author_1 = BookAuthor.create(author: author_1,  book: book_1)
      book_author_2 = BookAuthor.create(author: author_2,  book: book_2)

      visit '/books'

      expect(page).to have_content(book_1.year)
      expect(page).to have_content(book_2.year)
    end

    it "Shows all book authors in database" do

      book_1 = Book.create(title: "The Iliad",  pages:260 , year:1975 , image_url: "https://images-na.ssl-images-amazon.com/images/I/419x%2BHUZRrL.jpg ")
      book_2 = Book.create(title: "The Odyssey", pages:269 , year:1962 , image_url: "https://images-na.ssl-images-amazon.com/images/I/41t%2BKlNI4%2BL._SX332_BO1,204,203,200_.jpg ")
      author_1 = Author.create(name: "Homer")
      author_2 = Author.create(name: "Aeschylus")
      author_3 = Author.create(name: "Robert Fitzgerald")
      book_author_1 = BookAuthor.create(author: author_1,  book: book_1)
      book_author_2 = BookAuthor.create(author: author_2,  book: book_2)
      book_author_3 = BookAuthor.create(author: author_3, book: book_1)
      visit '/books'

      expect(book_1.authors.count).to eql(2)
      expect(book_2.authors.count).to eql(1)
    end

  end
end
