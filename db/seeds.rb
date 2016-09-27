# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# BOOK



# User.create(email: "claudia@example.com", password: "placeholder", password_confirmation: "placeholder")
# User.create(email: "jw@example.com", password: "placeholder", password_confirmation: "placeholder")
# User.create(email: "mary@example.com", password: "placeholder", password_confirmation: "placeholder")


googlebooks = GoogleBooks.search('The Great Gatsby', {:count => 3, :api_key => 'AIzaSyD2KgBKoZIUoiWtG4tO_xGrS_W04oIa8Yc'})


googlebooks.each do |gb|
  Book.create(
  :title => gb["title"],
  :author_last => gb["author"],
  :description => gb["description"],
  :cover => gb["image_link"]
  )
  Subject.create(
  :name => ["name"]
  )
end
