# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Create a main sample user.
User.create!(name: "Example User",
	email: "example@railstutorial.org",
	password:   "foobar",
	password_confirmation: "foobar",
	date_of_birth: "11/2/1990",
	que_quan: "haiduong",
	gioi_tinh: "nam",
	admin: true)
# Generate a bunch of additional users.
99.times do |n|
	name = Faker::Name.name
	email = "example-#{n+1}@railstutorial.org"
	password = "password"
	datbirth = "11/3/1990"
	quequan = "que"
	gioitinh = 1
	User.create!(name: name,
		email: email,
		password:password,
		password_confirmation: password,
		date_of_birth: datbirth ,
		que_quan: quequan,
		gioi_tinh: gioitinh )
end

# Generate microposts for a subset of users.
users = User.order(:created_at).take(6)
50.times do
	content = Faker::Lorem.sentence(word_count: 5)
	users.each { |user| user.microposts.create!(content: content) }
end