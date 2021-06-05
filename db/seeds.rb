# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users
user1 = User.find_or_create_by!({
  first_name: 'Austin',
  last_name: 'Kretzschmar',
  email: 'test@gmail.com',
  password_digest: 'testpassword1234'
})

user2 = User.find_or_create_by!({
  first_name: 'Courtney',
  last_name: 'Amos',
  email: 'email@example.com',
  password_digest: 'password'
})
  
user3 = User.find_or_create_by!({
  first_name: 'Brandon',
  last_name: 'MacDonald',
  email: 'example@gmail.com',
  password_digest: '123456789'
})


## Jobs
user1.job.create!({
  title: "Junior Full-Stack Web Developer",
  company: "Facebook",
  details: "As a Full Stack React Engineer at Newton, you will help develop core features of our React Native and React Web projects and integrate with our both teams. You'll use modern techniques, tools, and frameworks and can communicate the tradeoffs for your technical decisions. You'll drive features from start to finish, from gathering requirements with business stakeholders to leading technical design and implementation on all platforms. You write high-quality, testable code. When mistakes are made, you dive deep into root-cause and focus on solutions. You work well in a small collaborative team; every member is a key contributor. You'll mentor junior engineers in delivering solutions and lead the team in best practices.",
  status: "Applied",
  salary: 210000,
  url: "https://emplois.ca.indeed.com/viewjob?jk=d207cb1883218f3e&tk=1f7ed6s9do1l5800&from=serp&vjs=3",
  location: "12 Sunpark Plaza SE, Calgary AB, T3N01K",
  contact_name: 'Alex Lam',
  contact_email: 'alex.l@gmail.com',
  contact_phone: '(888) 444-6631',
  contact_socialmedia: 'linkedin.com/alexlam'
})

user2.job.create!({
  title: 'Senior Developer',
  company: 'Google',
  details: 'I would like to be a senior dev, but this job would require me to move.',
  status: 'Interested',
  salary: 500000,
  url:'https://www.linkedin.com/jobs/view/2554027046',
  location: 'San Francisco',
  contact_name: 'John Doe',
  contact_email: 'j.doe@gmail.com',
  contact_phone: '(555) 555-6677',
  contact_socialmedia: 'linkedin.com/jdoe'
})
  
user3.job.create!({
  title: 'Burger Flipper',
  company: 'McDonalds',
  details: 'Long description about the job of being a fry cook at McDonalds',
  status: 'Interviewing',
  salary: 30000,
  url: 'https://jobs.smartrecruiters.com/McDonaldsCanada/743999751554055-ft-cashiers-cooks-customer-service-scottsdale-north-delta',
  location: 'Delta',
  contact_name: 'Ronald McDonald',
  contact_email: 'ronald@mcdonalds.com',
  contact_phone: '(555) 555-6677',
  contact_socialmedia: 'linkedin.com/ronaldmcD'
})

## Events
user1.job[0].event.create!({
  title: 'Follow Up',
  date: '2021/07/20',
  location: '321 Road St, Seattle WA',
  details: 'Follow Up with my contact'
})

user2.job[0].event.create!({
  title: 'Interview w/ Company',
  date: '2021/06/22',
  location: '123 Vancouver St, Victoria BC',
  details: 'Call to confirm'
})

user3.job[0].event.create!({
  title: 'Virtual Interview',
  date: '2021/04/02',
  location: 'Zoom',
  details: 'will email zoom link 1 hr before interview'
})