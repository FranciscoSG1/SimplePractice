# TODO: Seed the database according to the following requirements:
# - There should be 10 Doctors with unique names
# - Each doctor should have 10 patients with unique names
# - Each patient should have 10 appointments (5 in the past, 5 in the future)
#   - Each appointment should be 50 minutes in duration
puts "Seeding Data please wait..."
=begin
Doctor.create!([{
    name: "Alex Man" #1
},{
    name: "Bob Ross"#2
},{
    name: "Chris Bo"#3
},{
    name: "Dan Ban"#4
}, {
    name: "Erin Joe"#5
}, {
    name: "Frank Ocean"#6
}, {
    name: "Gross Josh"#7
}, {
    name: "Joe Birron"#8
}, {
    name: "Max Hunter"#9
}, {
    name: "Luffy Ace"
}
])
=end
Doctor.destroy_all
Patient.destroy_all
10.times do |i|
    Doctor.create!(
        name: "Doctor #{i}"
        email: "doctor#{i}@gmail.com"
    )
    #essentially we can create the table of patients per doctor
end
doc = 1
100.times do |index| #theres 10 patients per doc
    #when index hits /10==0 then increase
    if (index % 10 ==0)
        doc+=1
    end
    Patient.create!(
        name: "Patient #{index}"
        doctor: "Doctor #{doc}" #this wont work
    )
    
    #past appoint
    5.times do |a|
        Appointment.create!(
            patient: "Patient #{index}"
            doctor: "Doctor #{doc}"
            start_time: 
            duration_in_minutes: rand(0..60)
        )

    end

    #future appoint
    5.times do |c|
        Appointment.create!(
            patient: "Patient #{index}"
            doctor: "Doctor #{doc}"
            start_time: 
            duration_in_minutes: rand(0..60)
        )
    end
end


puts "Seeding done."