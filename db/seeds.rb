# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

route1 = Pathway.create(date: Date.today, status: "ACTIVE")

J1 = Journey.create(date: Date.today, status: 'ACTIVE', pathway: route1)
J2 = Journey.create(date: Date.today, status: 'ACTIVE', pathway: route1)
J3 = Journey.create(date: Date.today, status: 'ACTIVE', pathway: route1)
J4 = Journey.create(date: Date.today, status: 'ACTIVE', pathway: route1)


# first journey
start = Time.now
Path.create(
    purpose: "WITHDRAWAL",
    address: "street #1",
    distance: 100, 
    start_at: start,
    end_at: start + 10.minutes, 
    estimated_time: 10,
    status: "PENDING",
    journey: J1
)
start = start + 10.minutes
Path.create(
    purpose: "DELIVERY", 
    address: "street #2",
    distance: 300, 
    start_at: start, 
    end_at: Time.now + 30.minutes,
    estimated_time: 30,
    status: "PENDING",
    journey: J1
)

# second journey
start = start + 30.minutes
Path.create(
    purpose: "WITHDRAWAL", 
    address: "street #3",
    distance: 200, 
    start_at: start,
    end_at: start + 20.minutes, 
    estimated_time: 20,
    status: "PENDING",
    journey: J2
)
start = start + 20.minutes
Path.create(
    purpose: "DELIVERY", 
    address: "street #4",
    distance: 20, 
    start_at: start,
    end_at: start + 2.minutes, 
    estimated_time: 2,
    status: "PENDING",
    journey: J2
)
start = start + 2.minutes
Path.create(
    purpose: "DELIVERY", 
    address: "street #5",
    distance: 10, 
    start_at: start,
    end_at: start + 1.minutes, 
    estimated_time: 1,
    status: "PENDING",
    journey: J2
)

# third journey
start = start + 1.minutes
Path.create(
    purpose: "WITHDRAWAL", 
    address: "street #6",
    distance: 400, 
    start_at: start, 
    end_at: Time.now + 40.minutes,
    estimated_time: 40,
    status: "PENDING",
    journey: J3
)
start = start + 40.minutes
Path.create(
    purpose: "WITHDRAWAL", 
    address: "street #7",
    distance: 100, 
    start_at: start, 
    end_at: Time.now + 10.minutes,
    estimated_time: 10,
    status: "PENDING",
    journey: J3
)
start = start + 10.minutes
Path.create(
    purpose: "DELIVERY", 
    address: "street #8",
    distance: 600, 
    start_at: start, 
    end_at: Time.now + 60.minutes,
    estimated_time: 60,
    status: "PENDING",
    journey: J3
)

# forth journey
start = start + 60.minutes
Path.create(
    purpose: "WITHDRAWAL", 
    address: "street #9",
    distance: 100, 
    start_at: start, 
    end_at: Time.now + 10.minutes,
    estimated_time: 10,
    status: "PENDING",
    journey: J4
)
start = start + 10.minutes
Path.create(
    purpose: "WITHDRAWAL", 
    address: "street #10",
    distance: 800, 
    start_at: start, 
    end_at: Time.now + 80.minutes,
    estimated_time: 80,
    status: "PENDING",
    journey: J4
)
start = start + 80.minutes
Path.create(
    purpose: "DELIVERY", 
    address: "street #11",
    distance: 200, 
    start_at: start, 
    end_at: Time.now + 20.minutes,
    estimated_time: 20,
    status: "PENDING",
    journey: J4
)
start = start + 20.minutes
Path.create(
    purpose: "DELIVERY", 
    address: "street #12",
    distance: 400, 
    start_at: start, 
    end_at: Time.now + 40.minutes,
    estimated_time: 40,
    status: "PENDING",
    journey: J4
)
