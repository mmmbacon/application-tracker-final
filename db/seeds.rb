# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

##Create Users
User.create([
  {
    first_name: "John", 
    last_name: "Trainer", 
    password: "password1234"
  }
])

##Create Jobs
Job.create([
  {
    title: "Junior Full-Stack Web Developer",
    company: "Facebook",
    description: "As a Full Stack React Engineer at Newton, you will help develop core features of our React Native and React Web projects and integrate with our both teams. You'll use modern techniques, tools, and frameworks and can communicate the tradeoffs for your technical decisions. You'll drive features from start to finish, from gathering requirements with business stakeholders to leading technical design and implementation on all platforms. You write high-quality, testable code. When mistakes are made, you dive deep into root-cause and focus on solutions. You work well in a small collaborative team; every member is a key contributor. You'll mentor junior engineers in delivering solutions and lead the team in best practices.",
    notes: "Requires commuting 2 hours per day",
    status: "Applied",
    salary: 210000,
    url: "https://emplois.ca.indeed.com/viewjob?jk=d207cb1883218f3e&tk=1f7ed6s9do1l5800&from=serp&vjs=3",
    location: "12 Sunpark Plaza SE, Calgary AB, T3N01K"
  }
])