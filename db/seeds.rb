# frozen_string_literal: true

Status.destroy_all
Size.destroy_all
Colour.destroy_all
TeddyBear.destroy_all

Status.create(name: 'Clearance', description: 'This must go!')
Status.create(name: 'On Sale', description: 'Gotta love a deal!')
Status.create(name: 'New Product', description: 'You must get me first!')

Size.create(name: 'Tiny', description: 'I am itty bitty!')
Size.create(name: 'Small', description: 'Just a wee twig wishin I were a tree!')
Size.create(name: 'Medium', description: 'I am not too big and not too small!')
Size.create(name: 'Large', description: 'I am a life size cuddle buddy!')
Size.create(name: 'Gigantic', description: 'I will not fit through your door!')

1.times do
  Colour.create(
    name: Faker::Color.color_name
  )
  100.times do
    TeddyBear.create(
      name: Faker::FunnyName.name,
      colour: Faker::Color.color_name,
      description: Faker::TvShows::FamilyGuy.quote,
      cost: Faker::Number.decimal(l_digits: 2)
    )
  end
end
