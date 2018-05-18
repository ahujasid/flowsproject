# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


2.times do |category|

	Category.create!(
		name: "Category {category}"
		)
end



2.times do |company|

	Company.create!(
		name: "Company {company}",
		logo: "http://via.placeholder.com/50x50"
		)

end


Flow.create!(name: "Dropbox Onboarding", category_id: 1, company_id: 1, tags: "tag1 tag2 tag3", thumbnail_img: "http://via.placeholder.com/350x200", no_of_images: 3, screen: "desktop", images:"http://via.placeholder.com/1024x720 http://via.placeholder.com/1024x720 http://via.placeholder.com/1024x720 http://via.placeholder.com/1024x720" ) 
Flow.create!(name: "Airtable Onboarding", category_id: 1, company_id: 2, tags: "tag1 tag2 tag3", thumbnail_img: "http://via.placeholder.com/350x200", no_of_images: 3, screen: "desktop", images:"http://via.placeholder.com/1024x720 http://via.placeholder.com/1024x720 http://via.placeholder.com/1024x720 http://via.placeholder.com/1024x720" )
Flow.create!(name: "Dropbox Sign Up", category_id: 2, company_id: 1, tags: "tag1 tag2 tag3", thumbnail_img: "http://via.placeholder.com/350x200", no_of_images: 3, screen: "desktop", images:"http://via.placeholder.com/1024x720 http://via.placeholder.com/1024x720 http://via.placeholder.com/1024x720 http://via.placeholder.com/1024x720" )
Flow.create!(name: "Airtable Sign Up", category_id: 2, company_id: 2, tags: "tag1 tag2 tag3", thumbnail_img: "http://via.placeholder.com/350x200", no_of_images: 3, screen: "desktop", images:"http://via.placeholder.com/1024x720 http://via.placeholder.com/1024x720 http://via.placeholder.com/1024x720 http://via.placeholder.com/1024x720" )
