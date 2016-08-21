# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# BOOK
Book.create(title: "Beauty is a Wound", author_first: "Eka", author_last: "Kurniawan", isbn: "9780811223645", pub: 2015, pages: 384, description: "The epic novel Beauty Is a Wound combines history, satire, family tragedy, legend, humor, and romance in a sweeping polyphony. The beautiful Indo prostitute Dewi Ayu and her four daughters are beset by incest, murder, bestiality, rape, insanity, monstrosity, and the often vengeful undead.", cover: "https://books.google.com/books/content?id=tc9PCgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE72P-WvYwEyO_QB7W9arcPuuNjNmsK7MugPPLP760v9aPz7z9LqZ9l42csdW5c5YXhoN-zJYyap5u26bBvzEEoA9-2TDtf4FqoM-Xa31C4-ZqVn4qL36v0mtJWVTLSc5Kk1lSem7")
Book.create(title: "The North Water", author_first: "Ian", author_last: "McGuire", isbn: "9781627795944", pub: 2016, pages: 272, description: "Behold the man: stinking, drunk, and brutal. Henry Drax is a harpooner on the Volunteer, a Yorkshire whaler bound for the rich hunting waters of the arctic circle. Also aboard for the first time is Patrick Sumner, an ex-army surgeon with a shattered reputation, no money, and no better option than to sail as the ship's medic on this violent, filthy, and ill-fated voyage.", cover: "https://books.google.com/books/content?id=oadwCwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE73rtvX52n6a97v4rE0VxN1glg3SqeSJopFEf6WBS2rfgsVrsD9bSrs0ucEH-XEzMXCt-TeWRd_FwfPAjSRCBar3pdqgZyePwvoOBOsCCEf066tGWMmZBVF9BrWJnqsgBSItUbqY")
Book.create(title: "Homegoing", author_first: "Yaa", author_last: "Gyasi", isbn: "9781101947142", pub: 2016, pages: 320, description: "The unforgettable New York Times best seller begins with the story of two half-sisters, separated by forces beyond their control: one sold into slavery, the other married to a British slaver. Written with tremendous sweep and power, Homegoing traces the generations of family who follow, as their destinies lead them through two continents and three hundred years of history, each life indeliably drawn, as the legacy of slavery is fully revealed in light of the present day.", cover: "https://books.google.com/books/content?id=fh-eCgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE73B7P59bWz1Qes93rf7zJ4FXYcr_t20xXVTEdpx4oYqpKMMe9ZBuDt04CAXhkLo6tkwgFjesz1nVETMADAr_02B1S3S7rl4z4HB2UtvjXU3JrEtM2YHF3TDQ6v3g1OmGTYUoe38")
Book.create(title: "Emperor of the Eight Islands", author_first: "Lian", author_last: "Hearn", isbn: "9780374536312", pub: 2016, pages: 272, description: "In the opening pages of the action-packed Book One of Lian Hearn's epic Tale of Shikanoko series--all of which will be published in 2016--a future lord is dispossessed of his birthright by a scheming uncle, a mountain sorcerer imbues a mask with the spirit of a great stag for a lost young man, a stubborn father forces his son to give up his wife to his older brother, and a powerful priest meddles in the succession to the Lotus Throne, the child who is the rightful heir to the emperor barely escaping the capital in the arms of his sister. And that is just the beginning.", cover: "https://books.google.com/books/content?id=D6-pCgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE71Ksip_9Qsv7g4x1JgUVRv0VSjQClYtLxC0NNhCLi6ty3G3fXHEbm1rtLt9LYan0wCwfUnxr10QhO_0aEMCgxQmr8Asm0_FUb67pGW6ylsap2CLEuyLO2burmb6CkBd77luWbCK")
Book.create(title: "Bring up the Bodies", author_first: "Hilary", author_last: "Mantel", isbn: "9780805096866", pub: 2012, pages: 410, description: "The sequel to Hilary Mantel's 2009 Man Booker Prize winner and New York Times bestseller, Wolf Hall delves into the heart of Tudor history with the downfall of Anne Boleyn. Though he battled for seven years to marry her, Henry is disenchanted with Anne Boleyn.", cover: "https://books.google.com/books/content?id=6G5SMwEACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE717M3n7Xka0QCEZqOcEx2nPnVvgmA9Tw9sY9o1lli9w2gBSKHQPny7aCqPiiu6ELq5cCJRD20vYSUWEEUWRNMnd-PkI7jBSL8L_TBewX7FaYnt0CjW5yEAqZqC0YfcjTc2aF5pi")

User.create(email: "claudia@example.com", password: "placeholder", password_confirmation: "placeholder")
User.create(email: "jw@example.com", password: "placeholder", password_confirmation: "placeholder")
User.create(email: "mary@example.com", password: "placeholder", password_confirmation: "placeholder")

Subject.create(name: "historical")
Subject.create(name: "epic/saga")
Subject.create(name: "family")
Subject.create(name: "adventure")
Subject.create(name: "political")
Subject.create(name: "psychological")

BookSubject.create(book_id: 1, subject_id: 2)
BookSubject.create(book_id: 1, subject_id: 3)
BookSubject.create(book_id: 2, subject_id: 1)
BookSubject.create(book_id: 2, subject_id: 4)
BookSubject.create(book_id: 3, subject_id: 1)
BookSubject.create(book_id: 3, subject_id: 2)
BookSubject.create(book_id: 4, subject_id: 2)
BookSubject.create(book_id: 4, subject_id: 4)
BookSubject.create(book_id: 5, subject_id: 1)
BookSubject.create(book_id: 5, subject_id: 5)

Favorite.create(user_id: 1, book_id: 1)
Favorite.create(user_id: 1, book_id: 2)
Favorite.create(user_id: 1, book_id: 3)
Favorite.create(user_id: 2, book_id: 2)
Favorite.create(user_id: 2, book_id: 3)
Favorite.create(user_id: 2, book_id: 4)
Favorite.create(user_id: 3, book_id: 3)
Favorite.create(user_id: 3, book_id: 4)
Favorite.create(user_id: 3, book_id: 5)

Goal.create(user_id: 1, num_books: 20, years: 1)
Goal.create(user_id: 1, num_books: 2, months: 1)
Goal.create(user_id: 2, num_books: 30, years: 1)
Goal.create(user_id: 2, num_books: 3, months: 1)
Goal.create(user_id: 3, num_books: 50, years: 1)
Goal.create(user_id: 3, num_books: 1, weeks: 1)
