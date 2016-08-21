# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# BOOK
Book.create(title: "Beauty is a Wound", author_first: "Eka", author_last: "Kurniawan", isbn: "9780811223645", pub: 2015, pages: 384, description: "The epic novel Beauty Is a Wound combines history, satire, family tragedy, legend, humor, and romance in a sweeping polyphony. The beautiful Indo prostitute Dewi Ayu and her four daughters are beset by incest, murder, bestiality, rape, insanity, monstrosity, and the often vengeful undead.")
Book.create(title: "The North Water", author_first: "Ian", author_last: "McGuire", isbn: "9781627795944", pub: 2016, pages: 272, description: "Behold the man: stinking, drunk, and brutal. Henry Drax is a harpooner on the Volunteer, a Yorkshire whaler bound for the rich hunting waters of the arctic circle. Also aboard for the first time is Patrick Sumner, an ex-army surgeon with a shattered reputation, no money, and no better option than to sail as the ship's medic on this violent, filthy, and ill-fated voyage.")
Book.create(title: "Homegoing", author_first: "Yaa", author_last: "Gyasi", isbn: "9781101947142", pub: 2016, pages: 320, description: "The unforgettable New York Times best seller begins with the story of two half-sisters, separated by forces beyond their control: one sold into slavery, the other married to a British slaver. Written with tremendous sweep and power, Homegoing traces the generations of family who follow, as their destinies lead them through two continents and three hundred years of history, each life indeliably drawn, as the legacy of slavery is fully revealed in light of the present day.")
Book.create(title: "Emperor of the Eight Islands", author_first: "Lian", author_last: "Hearn", isbn: "9780374536312", pub: 2016, pages: 272, description: "In the opening pages of the action-packed Book One of Lian Hearn's epic Tale of Shikanoko series--all of which will be published in 2016--a future lord is dispossessed of his birthright by a scheming uncle, a mountain sorcerer imbues a mask with the spirit of a great stag for a lost young man, a stubborn father forces his son to give up his wife to his older brother, and a powerful priest meddles in the succession to the Lotus Throne, the child who is the rightful heir to the emperor barely escaping the capital in the arms of his sister. And that is just the beginning.")
Book.create(title: "Bring up the Bodies", author_first: "Hilary", author_last: "Mantel", isbn: "9780805096866", pub: 2012, pages: 410, description: "The sequel to Hilary Mantel's 2009 Man Booker Prize winner and New York Times bestseller, Wolf Hall delves into the heart of Tudor history with the downfall of Anne Boleyn. Though he battled for seven years to marry her, Henry is disenchanted with Anne Boleyn.")

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
