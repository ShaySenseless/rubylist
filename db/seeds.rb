# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

community_category = Category.where(name: 'community').first_or_create(name: 'community')
	Subcategory.where(name: 'activities', category_id: community_category.id).first_or_create(name: 'activities', category_id: community_category.id)
	Subcategory.where(name: 'classes', category_id: community_category.id).first_or_create(name: 'classes', category_id: community_category.id)
	Subcategory.where(name: 'events', category_id: community_category.id).first_or_create(name: 'events', category_id: community_category.id)

housing_category = Category.where(name: 'housing').first_or_create(name: 'housing')
	Subcategory.where(name: 'flats/housing', category_id: housing_category.id).first_or_create(name: 'flats/housing', category_id: housing_category.id)
	Subcategory.where(name: 'holiday/rentals', category_id: housing_category.id).first_or_create(name: 'holiday/rentals', category_id: housing_category.id)
	Subcategory.where(name: 'housing/real estate for sale', category_id: housing_category.id).first_or_create(name: 'housing/real estate for sale', category_id: housing_category.id)

jobs_category = Category.where(name: 'jobs').first_or_create(name: 'jobs')
	Subcategory.where(name: 'accounting/finance', category_id: jobs_category.id).first_or_create(name: 'accounting/finance', category_id: jobs_category.id)
	Subcategory.where(name: 'admin/office', category_id: jobs_category.id).first_or_create(name: 'admin/office', category_id: jobs_category.id)
	Subcategory.where(name: 'arch/engineering', category_id: jobs_category.id).first_or_create(name: 'arch/engineering', category_id: jobs_category.id)

personals_category = Category.where(name: 'personals').first_or_create(name: 'personals')
	Subcategory.where(name: 'strictly platonic', category_id: personals_category.id).first_or_create(name: 'strictly platonic', category_id: personals_category.id)
	Subcategory.where(name: 'women seek women', category_id: personals_category.id).first_or_create(name: 'women seek women', category_id: personals_category.id)
	Subcategory.where(name: 'women seeking men', category_id: personals_category.id).first_or_create(name: 'women seeking men', category_id: personals_category.id)

services_category = Category.where(name: 'services').first_or_create(name: 'services')
	Subcategory.where(name: 'beauty', category_id: services_category.id).first_or_create(name: 'beauty', category_id: services_category.id)
	Subcategory.where(name: 'cars/automotive', category_id: services_category.id).first_or_create(name: 'cars/automotive', category_id: services_category.id)
	Subcategory.where(name: 'computer', category_id: services_category.id).first_or_create(name: 'computer', category_id: services_category.id)

for_sale_category = Category.where(name: 'for sale').first_or_create(name: 'for sale')
	Subcategory.where(name: 'antiques', category_id: for_sale_category.id).first_or_create(name: 'antiques', category_id: for_sale_category.id)
	Subcategory.where(name: 'appliances', category_id: for_sale_category.id).first_or_create(name: 'appliances', category_id: for_sale_category.id)
	Subcategory.where(name: 'arts+crafts', category_id: for_sale_category.id).first_or_create(name: 'arts+crafts', category_id: for_sale_category.id)