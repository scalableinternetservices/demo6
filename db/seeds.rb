# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Community.import(1024.times.map { |x| Community.new(name: "Community #{x}") })

first_id = Community.first.id
Submission.import(1024.times.map { |x| Submission.new(community_id: first_id + x, title: "Submission #{x}", url: "https://httpbin.org/anything/#{x}") })

first_id = Submission.first.id
Comment.import(1024.times.map { |x| Comment.new(message: "Hello #{x}", submission_id: first_id + x) })
