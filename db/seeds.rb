# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'
# db/seeds.rb

# Reset all tables
puts "deleting all records..."
User.destroy_all
Test.destroy_all
Question.destroy_all
Choice.destroy_all
Category.destroy_all
Job.destroy_all
Formation.destroy_all
JobCategory.destroy_all
JobFormation.destroy_all
UserAnswer.destroy_all

# Seed Users
puts "creating users..."
users = []
10.times do
  users << User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    birth_date: Faker::Date.birthday(min_age: 14, max_age: 26),
    address: Faker::Address.full_address,
    grade: rand(0..20),
    email: Faker::Internet.email,
    password: "password"
  )
end

# Seed Categories
puts "creating categories..."
categories = %w[Réaliste Artistique Social Logique].map do |cat|
  Category.create!(name: cat)
end

# Seed Tests
puts "creating tests..."
tests = []
5.times do
  tests << Test.create!(
    name: Faker::Educator.course_name,
    category: %w[preference aptitude personality].sample,
    duration: rand(5..45),
    nb_questions: rand(5..30)
  )
end

# Seed Questions
puts "creating questions..."
n = 1
questions = []
tests.each do |test|
  rand(5..30).times do
    questions << Question.create!(
      test_id: test.id,
      question: Faker::Lorem.sentence,
      position: n
    )
    n += 1
  end
end

# Seed Choices
puts "creating choices..."
questions.each do |question|
  4.times do
    Choice.create!(
      question_id: question.id,
      category_id: categories.sample.id,
      score: rand(1..4),
      choice: Faker::Lorem.word
    )
  end
end

# Seed Jobs
puts "creating jobs..."
jobs = []
10.times do
  jobs << Job.create!(
    name: Faker::Job.title,
    description: Faker::Lorem.sentence,
    salary: rand(1800..15_000),
    url_job: Faker::Internet.url
  )
end

# Seed Formations
puts "creating formations..."
formations = []
10.times do
  formations << Formation.create!(
    name: Faker::Educator.course_name,
    level: %w[Alternance BTS Bachelor Master BUT Prepa].sample,
    duration: rand(2..5),
    price: rand(0..15_000),
    url_formation: Faker::Internet.url
  )
end

jobs.each do |job|
  # Seed Job Categories
  JobCategory.create!(
    job_id: job.id,
    category_id: categories.sample.id
  )

  # Seed Job Formations
  JobFormation.create!(
    job_id: job.id,
    formation_id: formations.sample.id
  )
end

# Seed User Answers
users.each do |user|
  rand(5..10).times do
    UserAnswer.create!(
      user_id: user.id,
      choice_id: Choice.all.sample.id
    )
  end
end

puts "Seeding completed!"
