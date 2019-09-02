# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: 'John', last_name: 'Doe', email: 'john@example.com', company_id: nil)
User.create(first_name: 'Peter', last_name: 'Bell', email: 'peter@example.com', company_id: 1)
User.create(first_name: 'Chris', last_name: 'Dobson', email: 'chirs@example.com', company_id: 1)

Role.create(name: 'super_admin')
Role.create(name: 'company')
Role.create(name: 'manager')

Permission.create(name: 'Site Full Access')
Permission.create(name: 'Site View Only')
Permission.create(name: 'Archive Site')
Permission.create(name: 'Send invitation')

Site.create(name: 'Demo Site #1', user_id: 1)
Site.create(name: 'Demo Site #2', user_id: 1)
Site.create(name: 'Demo Site #3', user_id: 1)
Site.create(name: 'Demo Site #4', user_id: 1)
Site.create(name: 'Demo Site #5', user_id: 1)
Site.create(name: 'Demo Site #6', user_id: 1)
Site.create(name: 'Demo Site #7', user_id: 1)
Site.create(name: 'Demo Site #8', user_id: 1)
Site.create(name: 'Demo Site #9', user_id: 1)
Site.create(name: 'Demo Site #10', user_id: 1)
Site.create(name: 'Demo Site #11', user_id: 1)

SiteTab.create(title: 'Electrical', site_id: 1)
SiteTab.create(title: 'Fire', site_id: 1)
SiteTab.create(title: 'General Safety', site_id: 1)
SiteTab.create(title: 'Lift', site_id: 1)

SiteTab.create(title: 'Electrical', site_id: 2)
SiteTab.create(title: 'Fire', site_id: 2)
SiteTab.create(title: 'General Safety', site_id: 2)
SiteTab.create(title: 'Lift', site_id: 2)

SiteTab.create(title: 'Electrical', site_id: 3)
SiteTab.create(title: 'Fire', site_id: 3)
SiteTab.create(title: 'General Safety', site_id: 3)
SiteTab.create(title: 'Lift', site_id: 3)

SiteTab.create(title: 'Electrical', site_id: 4)
SiteTab.create(title: 'Fire', site_id: 4)
SiteTab.create(title: 'General Safety', site_id: 4)
SiteTab.create(title: 'Lift', site_id: 4)

SiteTab.create(title: 'Electrical', site_id: 5)
SiteTab.create(title: 'Fire', site_id: 5)
SiteTab.create(title: 'General Safety', site_id: 5)
SiteTab.create(title: 'Lift', site_id: 5)

SiteTab.create(title: 'Electrical', site_id: 6)
SiteTab.create(title: 'Fire', site_id: 6)
SiteTab.create(title: 'General Safety', site_id: 6)
SiteTab.create(title: 'Lift', site_id: 6)

SiteTab.create(title: 'Electrical', site_id: 7)
SiteTab.create(title: 'Fire', site_id: 7)
SiteTab.create(title: 'General Safety', site_id: 7)
SiteTab.create(title: 'Lift', site_id: 7)

SiteTab.create(title: 'Electrical', site_id: 8)
SiteTab.create(title: 'Fire', site_id: 8)
SiteTab.create(title: 'General Safety', site_id: 8)
SiteTab.create(title: 'Lift', site_id: 8)

SiteTab.create(title: 'Electrical', site_id: 9)
SiteTab.create(title: 'Fire', site_id: 9)
SiteTab.create(title: 'General Safety', site_id: 9)
SiteTab.create(title: 'Lift', site_id: 9)

SiteTab.create(title: 'Electrical', site_id: 10)
SiteTab.create(title: 'Fire', site_id: 10)
SiteTab.create(title: 'General Safety', site_id: 10)
SiteTab.create(title: 'Lift', site_id: 10)
