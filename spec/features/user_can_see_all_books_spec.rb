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

      user_1 = User.create(name: "John Smith")
      user_2 = User.create(name: "Jennifer Doe")
      user_3 = User.create(name: "Calvin McCarthy")

      review_1 = Review.create(title: "It's a classic for a reason - but it's also long and repetitive", description:"Years ago I read excerpts from The Odyssey in school - experiencing the full epic gives more color, but it can also drag. It’s not so much that the pace is slow (though the ending is overlong) - it’s more that you will re-read the same inconsequential details, phrased the same way, over and over.", score: 3, book: book_1, user: user_1)
      review_2 = Review.create(title: "I don't think 'complicated' is the best way to treat 'polytropos.'", description:"Well read by narrator David McCallion, hence the 5 stars. However: I am already interested in the book, and have read most of it before.", score: 5, book:book_2 , user:user_2)
      review_3 = Review.create(title: "The Odyssey Review", description:"my 10 year-old grandson loved it. good mix of graphics and well written story.", score: 5 , book: book_1, user:user_3)



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
      user_1 = User.create(name: "John Smith")
      user_2 = User.create(name: "Jennifer Doe")
      user_3 = User.create(name: "Calvin McCarthy")

      review_1 = Review.create(title: "It's a classic for a reason - but it's also long and repetitive", description:"Years ago I read excerpts from The Odyssey in school - experiencing the full epic gives more color, but it can also drag. It’s not so much that the pace is slow (though the ending is overlong) - it’s more that you will re-read the same inconsequential details, phrased the same way, over and over.", score: 3, book: book_1, user: user_1)
      review_2 = Review.create(title: "I don't think 'complicated' is the best way to treat 'polytropos.'", description:"Well read by narrator David McCallion, hence the 5 stars. However: I am already interested in the book, and have read most of it before.", score: 5, book:book_2 , user:user_2)
      review_3 = Review.create(title: "The Odyssey Review", description:"my 10 year-old grandson loved it. good mix of graphics and well written story.", score: 5 , book: book_1, user:user_3)


      visit '/books'

      expect(page).to have_content("260 Pages")
      expect(page).to have_content("269 Pages")
    end

    it "Shows all book years published in database" do

      book_1 = Book.create(title: "The Iliad",  pages:260 , year:1975 , image_url: "https://images-na.ssl-images-amazon.com/images/I/419x%2BHUZRrL.jpg ")
      book_2 = Book.create(title: "The Odyssey", pages:269 , year:1962 , image_url: "https://images-na.ssl-images-amazon.com/images/I/41t%2BKlNI4%2BL._SX332_BO1,204,203,200_.jpg ")
      author_1 = Author.create(name: "Homer")
      author_2 = Author.create(name: "Aeschylus")
      book_author_1 = BookAuthor.create(author: author_1,  book: book_1)
      book_author_2 = BookAuthor.create(author: author_2,  book: book_2)

      user_1 = User.create(name: "John Smith")
      user_2 = User.create(name: "Jennifer Doe")
      user_3 = User.create(name: "Calvin McCarthy")

      review_1 = Review.create(title: "It's a classic for a reason - but it's also long and repetitive", description:"Years ago I read excerpts from The Odyssey in school - experiencing the full epic gives more color, but it can also drag. It’s not so much that the pace is slow (though the ending is overlong) - it’s more that you will re-read the same inconsequential details, phrased the same way, over and over.", score: 3, book: book_1, user: user_1)
      review_2 = Review.create(title: "I don't think 'complicated' is the best way to treat 'polytropos.'", description:"Well read by narrator David McCallion, hence the 5 stars. However: I am already interested in the book, and have read most of it before.", score: 5, book:book_2 , user:user_2)
      review_3 = Review.create(title: "The Odyssey Review", description:"my 10 year-old grandson loved it. good mix of graphics and well written story.", score: 5 , book: book_1, user:user_3)

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

      user_1 = User.create(name: "John Smith")
      user_2 = User.create(name: "Jennifer Doe")
      user_3 = User.create(name: "Calvin McCarthy")

      review_1 = Review.create(title: "It's a classic for a reason - but it's also long and repetitive", description:"Years ago I read excerpts from The Odyssey in school - experiencing the full epic gives more color, but it can also drag. It’s not so much that the pace is slow (though the ending is overlong) - it’s more that you will re-read the same inconsequential details, phrased the same way, over and over.", score: 3, book: book_1, user: user_1)
      review_2 = Review.create(title: "I don't think 'complicated' is the best way to treat 'polytropos.'", description:"Well read by narrator David McCallion, hence the 5 stars. However: I am already interested in the book, and have read most of it before.", score: 5, book:book_2 , user:user_2)
      review_3 = Review.create(title: "The Odyssey Review", description:"my 10 year-old grandson loved it. good mix of graphics and well written story.", score: 5 , book: book_1, user:user_3)

      visit '/books'

      expect(book_1.authors.count).to eql(2)
      expect(book_2.authors.count).to eql(1)
    end

  end
end
