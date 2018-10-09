# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

books = Book.create([{title: "The Iliad",  pages:260 , year_published:1975 , image_url: "https://images-na.ssl-images-amazon.com/images/I/419x%2BHUZRrL.jpg "},
                     {title: "The Odyssey", pages:269 , year_published:1962 , image_url: "https://images-na.ssl-images-amazon.com/images/I/41t%2BKlNI4%2BL._SX332_BO1,204,203,200_.jpg "},
                     {title: "Aeschylus I: Oresteia: Agamemnon, The Libation Bearers, The Eumenides(The Complete Greek Tragedies)(Vol 1)", pages:170 , year_published:1969 , image_url: "https://images-na.ssl-images-amazon.com/images/I/514B7BcZuKL._SX320_BO1,204,203,200_.jpg "},
                     {title: "Aeschylus II: The Suppliant Maidens and The Persians, Seven against Thebes and Prometheus Bound (The Complete Greek Tragedies)",  pages:188 , year_published:1992 ,image_url: "https://images-na.ssl-images-amazon.com/images/I/51JdGmN746L._SX326_BO1,204,203,200_.jpg "},
                     {title: "The Complete Greek Tragedies: Sophocles I",  pages:218 , year_published:1991 , image_url: "https://images-na.ssl-images-amazon.com/images/I/51%2BoIEyVJXL._SX326_BO1,204,203,200_.jpg "},
                     {title: "Sophocles II: Ajax, The Women of Trachis, Electra & Philoctetes (The Complete Greek Tragedies)", pages:260 , year_published:1969 , image_url: "https://images-na.ssl-images-amazon.com/images/I/51tB5MiI8zL._SX326_BO1,204,203,200_.jpg"},
                     {title: "The Peloponnesian War", pages:668 , year_published:1989 ,image_url: "https://images-na.ssl-images-amazon.com/images/I/41RHRL9zpQL._SX326_BO1,204,203,200_.jpg"},
                     {title: "Euripides I: Alcestis, The Medea, The Heracleidae, Hippolytus (The Complete Greek Tragedies) (Vol 3)", pages:220 , year_published:1955 , image_url: "https://images-na.ssl-images-amazon.com/images/I/41GGDWb3jWL._SX470_BO1,204,203,200_.jpg"},
                     {title: "Euripides V: Electra, The Phoenician Women, The Bacchae (The Complete Greek Tragedies) (Vol 5) ", pages:227 , year_published:1969 ,  image_url: "https://images-na.ssl-images-amazon.com/images/I/51MTjSwnIzL._SX326_BO1,204,203,200_.jpg"},
                     {title: "Histories", pages:710 , year_published:1988 ,  image_url: "https://images-na.ssl-images-amazon.com/images/I/51fQOADAxKL._SX326_BO1,204,203,200_.jpg"},
                     {title: "Four Plays by Aristophanes: The Birds; The Clouds; The Frogs; Lysistrata (Meridian Classics)", pages:619 , year_published:1994 , image_url: "https://images-na.ssl-images-amazon.com/images/I/41WpQ34jAgL._SX338_BO1,204,203,200_.jpg"},
                     {title: "Meno",  pages:96 , year_published:1998, image_url: "https://images-na.ssl-images-amazon.com/images/I/41BumrwN16L._SX332_BO1,204,203,200_.jpg"},
                     {title: "Gorgias", pages:168, year_published:1998, image_url: "https://images-na.ssl-images-amazon.com/images/I/31NKNCYX3AL._SX312_BO1,204,203,200_.jpg"},
                    ])

authors = Author.create([{name: "Homer"},
                          {name: "Aeschylus"},
                          {name: "Sophocles"},
                          {name: "Thucydides"},
                          {name: "Euripides"},
                          {name: "Herodotus"},
                          {name: "Aristophanes"},
                          {name: "Plato"}
                    ])
users = User.create([{name: "John Smith"},
                     {name: "Jennifer Doe"},
                     {name: "Calvin McCarthy"},
                     {name: "Edward Edwards"},
                     {name: "Thomas Harris"},
                     {name: "Ruth Brand"},
                     {name: "Melvin Cedeno"},
                     {name: "Averi Johnson"},
                     {name: "Isaac Falkenstine"},
                     {name: "Ian Douglas"},
                     {name: "Dione Wilson"},

                     ])

reviews = Review.create([{title: "The Peloponnesian War", description:" ", score: },
                         {title: " ", description:" ", score: },
                         {title: " ", description:" ", score: },
                         {title: " ", description:" ", score: },
                         {title: " ", description:" ", score: },
                         {title: " ", description:" ", score: },
                         {title: " ", description:" ", score: },
                         {title: " ", description:" ", score: },
                         {title: " ", description:" ", score: },
                         {title: " ", description:" ", score: },
                         {title: " ", description:" ", score: }

                      ])
