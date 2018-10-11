require 'rails_helper'

RSpec.describe 'Book Index Statistics' do
  it 'shows top three books by average review' do
    book_1 = Book.create(title: "The Iliad",  pages:260 , year:1975 , image_url: "https://images-na.ssl-images-amazon.com/images/I/419x%2BHUZRrL.jpg ")
    book_2 = Book.create(title: "The Odyssey", pages:269 , year:1962 , image_url: "https://images-na.ssl-images-amazon.com/images/I/41t%2BKlNI4%2BL._SX332_BO1,204,203,200_.jpg ")
    book_3 = Book.create(title: "Aeschylus I: Oresteia: Agamemnon, The Libation Bearers, The Eumenides(The Complete Greek Tragedies)(Vol 1)", pages:170 , year:1969 , image_url: "https://images-na.ssl-images-amazon.com/images/I/514B7BcZuKL._SX320_BO1,204,203,200_.jpg ")
    book_4 = Book.create(title: "Aeschylus II: The Suppliant Maidens and The Persians, Seven against Thebes and Prometheus Bound (The Complete Greek Tragedies)",  pages:188 , year:1992 ,image_url: "https://images-na.ssl-images-amazon.com/images/I/51JdGmN746L._SX326_BO1,204,203,200_.jpg ")
    book_5 = Book.create(title: "The Complete Greek Tragedies: Sophocles I",  pages:218 , year:1991 , image_url: "https://images-na.ssl-images-amazon.com/images/I/51%2BoIEyVJXL._SX326_BO1,204,203,200_.jpg ")

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
    review_2 = Review.create(title: "I don't think 'complicated' is the best way to treat 'polytropos.'", description:"Well read by narrator David McCallion, hence the 5 stars. However: I am already interested in the book, and have read most of it before.", score: 5, book:book_2 , user:user_2)
    review_3 = Review.create(title: "The Odyssey Review", description:"my 10 year-old grandson loved it. good mix of graphics and well written story.", score: 3 , book: book_2, user:user_3)
    review_6 = Review.create(title: "Poor Translation", description:"As very good as this translation is, this edition doesn’t do it justice with regard to its formatting.", score:4 , book: book_3 , user: user_6)
    review_7 = Review.create(title: "AMAZING!! 5 STARS!", description:"Truly 5-star great work of literature, and I certainly agree with all the other reviewers who extol its virtues!", score:5 , book: book_3 , user: user_7)
    review_8 = Review.create(title: "Five Stars!", description:"This book is amazing. The story underlying it is amazing, and the writing is superb - clear, flowing, and with appropriate detail and connections drawn.", score: 5, book: book_4 , user:user_8)
    review_9 = Review.create(title: "This needs to be a screenplay", description:"I wish someone would make a movie with the same sensibility, it would be an instant classic. I also wish this book would come out on Kindle so one could search and highlight it. There are a lot of classic elements to this story, in every sense of the word.", score: 5, book: book_4 , user: user_9 )
    review_10 = Review.create(title: "Terrifying but wonderful", description:"What a frightening and feasible scenario. The way the web was spun, one strand at a time, as the participants didn’t realize what they had walked into.", score: 5, book: book_4 , user: user_10 )
    review_11= Review.create(title: "Wow! 10/10 would read again", description:"Great story, the characters in many instances rising above and beyond what they thought themselves capable of.", score: 5, book: book_5 , user: user_11)
    review_12 = Review.create(title: "Great Author!", description:"Really love this authors books. You should definitely read this!", score: 5 , book: book_5 , user:user_1)
    review_16 = Review.create(title: "The Ili-RAD!", description:"Read this Book for class. This was an excellent translation. Well formatted and easy to read in a prose style.", score: 1, book: book_1 , user: user_5 )
    review_17 = Review.create(title: "Well Translated", description:"I found this easy to read as the translation made it appear like we were reading today’s news.", score: 2, book: book_1, user: user_6 )

    visit '/books'

    within('#highest_rated_books') do
      expect(page).to have_content(book_5.title)
      expect(page).to have_content(book_4.title)
      expect(page).to have_content(book_3.title)
      expect(page).to_not have_content(book_2.title)
      expect(page).to_not have_content(book_1.title)
    end
  end

  it 'shows worst three books by average review' do
    book_1 = Book.create(title: "The Iliad",  pages:260 , year:1975 , image_url: "https://images-na.ssl-images-amazon.com/images/I/419x%2BHUZRrL.jpg ")
    book_2 = Book.create(title: "The Odyssey", pages:269 , year:1962 , image_url: "https://images-na.ssl-images-amazon.com/images/I/41t%2BKlNI4%2BL._SX332_BO1,204,203,200_.jpg ")
    book_3 = Book.create(title: "Aeschylus I: Oresteia: Agamemnon, The Libation Bearers, The Eumenides(The Complete Greek Tragedies)(Vol 1)", pages:170 , year:1969 , image_url: "https://images-na.ssl-images-amazon.com/images/I/514B7BcZuKL._SX320_BO1,204,203,200_.jpg ")
    book_4 = Book.create(title: "Aeschylus II: The Suppliant Maidens and The Persians, Seven against Thebes and Prometheus Bound (The Complete Greek Tragedies)",  pages:188 , year:1992 ,image_url: "https://images-na.ssl-images-amazon.com/images/I/51JdGmN746L._SX326_BO1,204,203,200_.jpg ")
    book_5 = Book.create(title: "The Complete Greek Tragedies: Sophocles I",  pages:218 , year:1991 , image_url: "https://images-na.ssl-images-amazon.com/images/I/51%2BoIEyVJXL._SX326_BO1,204,203,200_.jpg ")

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
    review_2 = Review.create(title: "I don't think 'complicated' is the best way to treat 'polytropos.'", description:"Well read by narrator David McCallion, hence the 5 stars. However: I am already interested in the book, and have read most of it before.", score: 5, book:book_2 , user:user_2)
    review_3 = Review.create(title: "The Odyssey Review", description:"my 10 year-old grandson loved it. good mix of graphics and well written story.", score: 3 , book: book_2, user:user_3)
    review_6 = Review.create(title: "Poor Translation", description:"As very good as this translation is, this edition doesn’t do it justice with regard to its formatting.", score:4 , book: book_3 , user: user_6)
    review_7 = Review.create(title: "AMAZING!! 5 STARS!", description:"Truly 5-star great work of literature, and I certainly agree with all the other reviewers who extol its virtues!", score:5 , book: book_3 , user: user_7)
    review_8 = Review.create(title: "Five Stars!", description:"This book is amazing. The story underlying it is amazing, and the writing is superb - clear, flowing, and with appropriate detail and connections drawn.", score: 5, book: book_4 , user:user_8)
    review_9 = Review.create(title: "This needs to be a screenplay", description:"I wish someone would make a movie with the same sensibility, it would be an instant classic. I also wish this book would come out on Kindle so one could search and highlight it. There are a lot of classic elements to this story, in every sense of the word.", score: 5, book: book_4 , user: user_9 )
    review_10 = Review.create(title: "Terrifying but wonderful", description:"What a frightening and feasible scenario. The way the web was spun, one strand at a time, as the participants didn’t realize what they had walked into.", score: 5, book: book_4 , user: user_10 )
    review_11= Review.create(title: "Wow! 10/10 would read again", description:"Great story, the characters in many instances rising above and beyond what they thought themselves capable of.", score: 5, book: book_5 , user: user_11)
    review_12 = Review.create(title: "Great Author!", description:"Really love this authors books. You should definitely read this!", score: 5 , book: book_5 , user:user_1)
    review_16 = Review.create(title: "The Ili-RAD!", description:"Read this Book for class. This was an excellent translation. Well formatted and easy to read in a prose style.", score: 1, book: book_1 , user: user_5 )
    review_17 = Review.create(title: "Well Translated", description:"I found this easy to read as the translation made it appear like we were reading today’s news.", score: 2, book: book_1, user: user_6 )

    visit '/books'

    within('#lowest_rated_books') do
      expect(page).to have_content(book_1.title)
      expect(page).to have_content(book_2.title)
      expect(page).to have_content(book_3.title)
      expect(page).to_not have_content(book_4.title)
      expect(page).to_not have_content(book_5.title)
    end
  end 
end
