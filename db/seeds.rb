require 'digest/sha1'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

name = 'zhangyida'
password = Digest::SHA1.hexdigest('zhangyida_001')
User.create(:name => name,:password => password)  unless User.first.present?

Category.create(:name => '世界的尽头')
