# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

book_1 = Book.create(title: "The Iliad",  pages:260 , year:1975 , image_url: "https://images-na.ssl-images-amazon.com/images/I/419x%2BHUZRrL.jpg ")
book_2 = Book.create(title: "The Odyssey", pages:269 , year:1962 , image_url: "https://images-na.ssl-images-amazon.com/images/I/41t%2BKlNI4%2BL._SX332_BO1,204,203,200_.jpg ")
book_3 = Book.create(title: "Aeschylus I: Oresteia: Agamemnon, The Libation Bearers, The Eumenides(The Complete Greek Tragedies)(Vol 1)", pages:170 , year:1969 , image_url: "https://images-na.ssl-images-amazon.com/images/I/514B7BcZuKL._SX320_BO1,204,203,200_.jpg ")
book_4 = Book.create(title: "Aeschylus II: The Suppliant Maidens and The Persians, Seven against Thebes and Prometheus Bound (The Complete Greek Tragedies)",  pages:188 , year:1992 ,image_url: "https://images-na.ssl-images-amazon.com/images/I/51JdGmN746L._SX326_BO1,204,203,200_.jpg ")
book_5 = Book.create(title: "The Complete Greek Tragedies: Sophocles I",  pages:218 , year:1991 , image_url: "https://images-na.ssl-images-amazon.com/images/I/51%2BoIEyVJXL._SX326_BO1,204,203,200_.jpg ")
book_6 = Book.create(title: "Sophocles II: Ajax, The Women of Trachis, Electra & Philoctetes (The Complete Greek Tragedies)", pages:260 , year:1969 , image_url: "https://images-na.ssl-images-amazon.com/images/I/51tB5MiI8zL._SX326_BO1,204,203,200_.jpg")
book_7 = Book.create(title: "The Peloponnesian War", pages:668 , year:1989 ,image_url: "https://images-na.ssl-images-amazon.com/images/I/41RHRL9zpQL._SX326_BO1,204,203,200_.jpg")
book_8 = Book.create(title: "Euripides I: Alcestis, The Medea, The Heracleidae, Hippolytus (The Complete Greek Tragedies) (Vol 3)", pages:220 , year:1955 , image_url: "https://images-na.ssl-images-amazon.com/images/I/41GGDWb3jWL._SX470_BO1,204,203,200_.jpg")
book_9 = Book.create(title: "Euripides V: Electra, The Phoenician Women, The Bacchae (The Complete Greek Tragedies) (Vol 5) ", pages:227 , year:1969 ,  image_url: "https://images-na.ssl-images-amazon.com/images/I/51MTjSwnIzL._SX326_BO1,204,203,200_.jpg")
book_10 = Book.create(title: "Histories", pages:710 , year:1988 ,  image_url: "https://images-na.ssl-images-amazon.com/images/I/51fQOADAxKL._SX326_BO1,204,203,200_.jpg")
book_11 = Book.create(title: "Four Plays by Aristophanes: The Birds; The Clouds; The Frogs; Lysistrata (Meridian Classics)", pages:619 , year:1994 , image_url: "https://images-na.ssl-images-amazon.com/images/I/41WpQ34jAgL._SX338_BO1,204,203,200_.jpg")
book_12 = Book.create(title: "Meno",  pages:96 , year:1998, image_url: "https://images-na.ssl-images-amazon.com/images/I/41BumrwN16L._SX332_BO1,204,203,200_.jpg")
book_13 = Book.create(title: "Gorgias", pages:168, year:1998, image_url: "https://images-na.ssl-images-amazon.com/images/I/31NKNCYX3AL._SX312_BO1,204,203,200_.jpg")


author_1 = Author.create(name: "Homer")
author_2 = Author.create(name: "Aeschylus")
author_3 = Author.create(name: "Sophocles")
author_4 = Author.create(name: "Thucydides")
author_5 = Author.create(name: "Euripides")
author_6 = Author.create(name: "Herodotus")
author_7 = Author.create(name: "Aristophanes")
author_8 = Author.create(name: "Plato")

book_author_1 = BookAuthor.create(author:author_1, book:book_1)
book_author_2 = BookAuthor.create(author:author_1, book:book_2)
book_author_3 = BookAuthor.create(author:author_2, book:book_3)
book_author_4 = BookAuthor.create(author:author_2, book:book_4)
book_author_5 = BookAuthor.create(author:author_3, book:book_6)
book_author_6 = BookAuthor.create(author:author_4, book:book_7)
book_author_7 = BookAuthor.create(author:author_5, book:book_8)
book_author_8 = BookAuthor.create(author:author_5, book:book_9)
book_author_9 = BookAuthor.create(author:author_6, book:book_10)
book_author_10 = BookAuthor.create(author:author_7, book:book_11)
book_author_11 = BookAuthor.create(author:author_8, book:book_12)
book_author_12 = BookAuthor.create(author:author_8, book:book_13)

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
review_3 = Review.create(title: "The Odyssey Review", description:"my 10 year-old grandson loved it. good mix of graphics and well written story.", score: 4 , book: book_2, user:user_3)

review_4 = Review.create(title: "Grew hair on my chest", description:"I believe that this book has made me a better man, which is remarkable because, well....I’m a chick.", score: 5, book: book_7  , user: user_4)
review_5 = Review.create(title: "Four Stars", description:"Great book, should have read it sooner in life. Understand history, understand today.", score: 4, book: book_7 , user:user_5)

review_6 = Review.create(title: "Poor Translation", description:"As very good as this translation is, this edition doesn’t do it justice with regard to its formatting.", score:3 , book: book_3 , user: user_6)
review_7 = Review.create(title: "AMAZING!! 5 STARS!", description:"Truly 5-star great work of literature, and I certainly agree with all the other reviewers who extol its virtues!", score:5 , book: book_3 , user: user_7)

review_8 = Review.create(title: "Five Stars!", description:"This book is amazing. The story underlying it is amazing, and the writing is superb - clear, flowing, and with appropriate detail and connections drawn.", score: 5, book: book_4 , user:user_8)
review_9 = Review.create(title: "This needs to be a screenplay", description:"I wish someone would make a movie with the same sensibility, it would be an instant classic. I also wish this book would come out on Kindle so one could search and highlight it. There are a lot of classic elements to this story, in every sense of the word.", score: 5, book: book_4 , user: user_9 )
review_10 = Review.create(title: "Terrifying but wonderful", description:"What a frightening and feasible scenario. The way the web was spun, one strand at a time, as the participants didn’t realize what they had walked into.", score: 5, book: book_4 , user: user_10 )

review_11= Review.create(title: "Wow! 10/10 would read again", description:"Great story, the characters in many instances rising above and beyond what they thought themselves capable of.", score: 5, book: book_5 , user: user_11)
review_12 = Review.create(title: "Great Author!", description:"Really love this authors books. You should definitely read this!", score: 5 , book: book_5 , user:user_1)

review_13 = Review.create(title: "Hard to understand", description:"This is a difficult book to read and a difficult review to write.", score: 3, book: book_6 , user:user_2)
review_14 = Review.create(title: "Expect to take a long time to read this", description:"The price is unbeatable but the translation is pretty rough. Many sentences had to be reread to just sort out the awkward phraseology.", score: 4, book: book_6, user: user_3)
review_15 = Review.create(title: "Yes! Sophocles!", description:"I absolutely loved the style in which the story is told, rather than making everything as brief as possible, the author takes his time, he is as long-winded as they come and that’s a good thing.", score: 5, book: book_6 , user: user_4)

review_16 = Review.create(title: "The Ili-RAD!", description:"Read this Book for class. This was an excellent translation. Well formatted and easy to read in a prose style.", score: 4, book: book_1 , user: user_5 )
review_17 = Review.create(title: "Well Translated", description:"I found this easy to read as the translation made it appear like we were reading today’s news.", score: 4, book: book_1, user: user_6 )

review_18 = Review.create(title: "Life Changing!", description:"Are you willing to have an honest look into your life? If you are, then please read this read this book. A masterpiece!", score: 5, book: book_8 , user: user_7)

review_19 = Review.create(title: "highly suggest this book", description:"Very well done study on a subject I knew very little about. My wife is an RN and she also enjoyed this immensely.", score: 4, book: book_9, user: user_8)
review_20 = Review.create(title: "Frustrating book", description:"We had to return the book . The print was so small a magnifying glass wouldn’t have helped.", score: 4, book: book_9 , user:user_9)
review_21 = Review.create(title: "Small font", description:"I didn’t listen to the reviews saying the font is really small. It is ridiculous. you are better buying the individual books and reading them as you go.", score: 3, book: book_9 , user:user_10)

review_22 = Review.create(title: "Histories Review", description:"I have never been more torn about a book. The actual content here is excellent, but the physical book is poorly made. The binding immediately detached from pages the first time I opened it and the dust cover fits as loosely as possible.", score: 3 , book: book_10, user:user_11)
review_23 = Review.create(title: "Had to Return this book", description:"Got this as a gift, font is tiny and it’s clear this dude just bound an ebook version he got off project Gutenberg or something. Total bootleg crap.", score: 2, book: book_10, user:user_1)
review_24 = Review.create(title: "This book is for babies", description:"Everything about this book was cartoonish.I’m very sorry I wasted my time on this sub-par effort.", score: 2 , book: book_10, user:user_2)
review_25 = Review.create(title: "I may be the only one that likes this book", description:"Fantastic book. Super easy to read and comprehend.", score: 5, book: book_10, user: user_3)

review_26 = Review.create(title: "Reccommmended how do i spell recommend?", description:"A very useful resource written understandably, clearly, and thoughtfully. An important addition to my library.", score: 5, book: book_11 , user: user_4)
review_27 = Review.create(title: "Good read for a school project", description:"This is an academic read but well worth it!", score: 4, book: book_11, user: user_5)

review_28 = Review.create(title: "Meno Review", description:"The book doesn’t do much for me. My child has to read it for class. I am trying to read it with the perspective that the author wrote it not to make money but to share insight. It’s ok.", score: 2 , book: book_12, user: user_6)
review_29 = Review.create(title: "I loved it!", description:"It is what it claims to be. It is inviting. It is an academic book to be sure, with deep academic integrity. However, it is an inviting book. Well worth it!", score: 5, book: book_12, user: user_7)
review_30 = Review.create(title: "Important Book", description:"This is an absolutely crucial book in the chronology of Western thought!", score: 4, book: book_12, user: user_8)

review_31 = Review.create(title: "Gorgias Review", description:"As a general rule, I don’t review classics. Classics are classics for a reason—they have withstood the test of time—and there is very little of value that I can add to what countless generations of readers and scholars have already said about them. You ought to read classics *because they are classics*, not because they get good reviews on Amazon or GoodReads.", score: 4, book: book_13, user: user_1)
review_32 = Review.create(title: "Good Book!", description:"If you are interested in ancient history, you really ought to read this book.", score: 4, book: book_13 , user: user_5)
review_33 = Review.create(title: "Skip Intro and You're good to go", description:"I will forewarn anybody thinking about reading this book, it was the most difficult introduction I have ever read! However, after I mustered my way through the introduction, rereading passages here and there, Googling certain terms and locations, I found this to be one of the best military books I have read.", score: 4 , book: book_13, user: user_6)
review_34 = Review.create(title: "AMAZING! BRILLIANT!", description:"What a brilliant book. This was a brutal hard time to live. Mesmerizing to read", score: 5 , book: book_13, user:user_2)
