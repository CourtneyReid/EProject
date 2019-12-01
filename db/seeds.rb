# frozen_string_literal: true

TeddyBear.destroy_all
Status.destroy_all
Colour.destroy_all
AdminUser.destroy_all

Status.create(name: 'Clearance', description: 'This must go!')
Status.create(name: 'On Sale', description: 'Gotta love a deal!')
Status.create(name: 'New Product', description: 'You must get me first!')
Status.create(name: 'Regular Product', description: 'Everday normal guy!')

20.times do
  statusName = Status.first(4)
  colour = Colour.create(
    name: Faker::Color.unique.color_name
  )
  2.times do
    TeddyBear.create(
      name: Faker::FunnyName.unique.name,
      colour_id: colour.id,
      description: Faker::TvShows::FamilyGuy.quote,
      cost: Faker::Number.decimal(l_digits: 2),
      status: statusName[1]
    )
  end
  2.times do
    TeddyBear.create(
      name: Faker::FunnyName.unique.name,
      colour_id: colour.id,
      description: Faker::TvShows::FamilyGuy.quote,
      cost: Faker::Number.decimal(l_digits: 2),
      status: statusName[2]
    )
  end
  2.times do
    TeddyBear.create(
      name: Faker::FunnyName.unique.name,
      colour_id: colour.id,
      description: Faker::TvShows::FamilyGuy.quote,
      cost: Faker::Number.decimal(l_digits: 2),
      status: statusName[3]
    )
  end
  6.times do
    TeddyBear.create(
      name: Faker::FunnyName.unique.name,
      colour_id: colour.id,
      description: Faker::TvShows::FamilyGuy.quote,
      cost: Faker::Number.decimal(l_digits: 2),
      status: statusName[4]
    )
  end
end

puts 'Colours created!'

if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end
