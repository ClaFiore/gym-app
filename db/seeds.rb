require 'faker'
Member.destroy_all
Trainer.destroy_all
Workout.destroy_all

members = []
trainers = []
age = (18..75)
day = ["Mon", "Tue", "Wed", "Thu", "Fri"]
time = ["AM", "Noon", "PM", "Evening"]

10.times do 
    members << Member.create(name: Faker::Name.name, age: rand(age))
end

5.times do 
    trainers << Trainer.create(name: Faker::GreekPhilosophers.name, specialty: Faker::Team.sport)
end

20.times do 
    Workout.create(name: Faker::Superhero.name, day: day.sample, time: time.sample, member: members.sample, trainer: trainers.sample)
end