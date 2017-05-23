Pet.destroy_all

15.times do
  Pet.create!(name: Faker::StarWars.character, category: Pet::CATEGORIES.sample, found: Date.today)
end
