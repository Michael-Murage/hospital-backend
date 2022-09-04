ailments = %w!ulcers pneumonia malaria athritis toothache heartache heartburn headache typhoid hiv!

for i in ailments
  Doctor.create(
    first_name: Faker::Name.name,
    last_name: Faker::Name.middle_name,
    ailment_type: ailments[rand(0...ailments.size)],
    ailment_id: rand(1..10)
  )
  Patient.create(
    first_name: Faker::Name.name,
    gender: "M",
    ailment_name: ailments[rand(0...ailments.size)],
    ailment_id: rand(1..10)
  )
  Ailment.create(
    ailment_name: i
  )
end
