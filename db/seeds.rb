# frozen_string_literal: true

TeddyBear.destroy_all
Status.destroy_all
Size.destroy_all
Colour.destroy_all

Status.create(name: 'Clearance', description: 'This must go!')
Status.create(name: 'On Sale', description: 'Gotta love a deal!')
Status.create(name: 'New Product', description: 'You must get me first!')
Status.create(name: 'Regular Product', description: 'Everday normal guy!')

Size.create(name: 'Tiny', description: 'I am itty bitty!')
Size.create(name: 'Small', description: 'Just a wee twig wishin I were a tree!')
Size.create(name: 'Medium', description: 'I am not too big and not too small!')
Size.create(name: 'Large', description: 'I am a life size cuddle buddy!')
Size.create(name: 'Gigantic', description: 'I will not fit through your door!')

20.times do
  colour = Colour.create(
    name: Faker::Color.unique.color_name
  )
  5.times do
    # status_offset = rand(Status.count)
    # rand_status = Status.offset(status_offset).first
    # size_offset = rand(Size.count)
    # rand_size = Size.offset(size_offset).first

    TeddyBear.create(
      name: Faker::FunnyName.unique.name,
      colour_id: colour.id,
      description: Faker::TvShows::FamilyGuy.quote,
      cost: Faker::Number.decimal(l_digits: 2),

      status: Status.first,
      size: Size.first
      # status: rand_status.id,
      # size: rand_size.id
    )
  end
end
puts 'Colours created!'
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?