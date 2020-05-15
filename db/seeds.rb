jordon = User.create(name: "jordon", password: "password")
workout = Workout.create(date:"5/14/2020", points_total:100, user_id: jordon.id)
excercise = Excercise.create(name:"pushups", value:3)
