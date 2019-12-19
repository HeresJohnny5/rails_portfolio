# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog_num|
  Blog.create!(
    title: "My Blog Post #{blog_num + 1}",
    body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  )
end

puts "10 blog posts created"

5.times do |skill_num|
  Skill.create!(
    title: "Rails #{skill_num}",
    percent_utilized: 15
  )
end

puts "5 skills created"

9.times do |project_num|
  Project.create!(
    title: "Project title: #{project_num + 1}",
    subtitle: "My great service",
    body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
  )
end

puts "9 projects created"
